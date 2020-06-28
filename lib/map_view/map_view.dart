import 'dart:async';

import 'package:chrono/app_constants/colors.dart';
import 'package:chrono/map_view/map_button.dart';
import 'package:chrono/map_view/map_view_model.dart';
import 'package:chrono/resuable_widgets/frame1.dart';
import 'package:chrono/safe_travels/safe_travels.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';

class MapView extends StatefulWidget {
  final String time;
  final String car;

  const MapView(this.time, this.car);

  @override
  State<MapView> createState() => MapViewState();
}

class MapViewState extends State<MapView> {
  GoogleMapController _controller;
  String _mapStyle;
  int wait_time = 5;
  Timer _timer;
  Map<PolylineId, Polyline> polylines = {};
  List<LatLng> polylineCoordinates = [];
  PolylinePoints polylinePoints = PolylinePoints();
  final vm = MapViewModel();

  _addPolyLine() {
    PolylineId id = PolylineId("poly");
    Polyline polyline = Polyline(
        polylineId: id, color: Colors.red, points: polylineCoordinates);
    polylines[id] = polyline;
    setState(() {});
  }

  _getPolyline() async {
    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
        "AIzaSyDcNmyXeuZPpstJ815LFzqkST2mEAKZuYU",
        PointLatLng(45.5051, -122.6750),
        PointLatLng(39.506890, -122.203047),
        travelMode: TravelMode.driving,
        wayPoints: [PolylineWayPoint(location: "Sabo, Yaba Lagos Nigeria")]);
    if (result.points.isNotEmpty) {
      result.points.forEach((PointLatLng point) {
        polylineCoordinates.add(LatLng(point.latitude, point.longitude));
      });
    }
    _addPolyLine();
  }

  void startTimer() {
    print("timer called");
    const oneSec = const Duration(seconds: 1);
    _timer = new Timer.periodic(
      oneSec,
      (Timer timer) => setState(
        () {
          if (wait_time < 1) {
            timer.cancel();
          } else {
            wait_time = wait_time - 1;
          }
        },
      ),
    );
  }

  waitThenNavigate() async {
    var duration = Duration(seconds: 6);
    return Timer(duration, () {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => SaveTravelsView(widget.time, widget.car)));
    });
  }

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.33163361, -122.03031807),
    zoom: 5,
  );

  static final CameraPosition _kLake = CameraPosition(
      target: LatLng(37.42796133580664, -122.085749655962), zoom: 19.0);

  @override
  void initState() {
    rootBundle.loadString('assets/map_style.txt').then((string) {
      _mapStyle = string;
    });
    startTimer();
    waitThenNavigate();

    vm.pickUpMarker.add(Marker(
        markerId: MarkerId('mark1'),
        draggable: true,
        position: LatLng(45.5051, -122.6750),
        icon: BitmapDescriptor.fromAsset(widget.car)));

    _getPolyline();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: Colors.grey,
        body: Stack(
          children: [
            GoogleMap(
                mapType: MapType.normal,
                initialCameraPosition: _kGooglePlex,
                onMapCreated: (GoogleMapController controller) {
                  _controller = controller;
                  _controller.setMapStyle(_mapStyle);
                },
                markers: Set.from(vm.pickUpMarker),
                myLocationButtonEnabled: false,
                polylines: Set<Polyline>.of(polylines.values)),
            Frame1(),
            Align(
                alignment: Alignment.bottomCenter, child: MapButton(wait_time))
          ],
        ));
  }
}

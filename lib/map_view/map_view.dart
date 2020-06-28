import 'package:chrono/map_view/map_view_model.dart';
import 'package:chrono/resuable_widgets/frame1.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MapView extends StatefulWidget {
  @override
  State<MapView> createState() => MapViewState();
}

class MapViewState extends State<MapView> {
  GoogleMapController _controller;
  String _mapStyle;

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  static final CameraPosition _kLake =
      CameraPosition(target: LatLng(37.33163361, -122.03031807), zoom: 19.0);

  @override
  void initState() {
    rootBundle.loadString('assets/map_style.txt').then((string) {
      _mapStyle = string;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: Stack(
      children: [
        GoogleMap(
          mapType: MapType.normal,
          initialCameraPosition: _kGooglePlex,
          onMapCreated: (GoogleMapController controller) {
            _controller = controller;
            _controller.setMapStyle(_mapStyle);
          },
          markers: Set.from(MapViewModel().pickUpMarker),
          myLocationButtonEnabled: false,
        ),
        Frame1(),
        Padding(
          padding: const EdgeInsets.only(bottom: 0.0),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              child: Center(
                child: Stack(
                  children: [
                    SvgPicture.asset("assets/images/map_button.svg"),
                    Text("shjgfjhagf", style: TextStyle(color: Colors.white),)
                  ],
                ),
              )
            )
          ),
        ),
      ],
    ));
  }
}

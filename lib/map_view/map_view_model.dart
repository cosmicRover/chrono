import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapViewModel{
  List<Marker> pickUpMarker = [
    Marker(
        markerId: MarkerId('mark1'),
        draggable: true,
        position: LatLng(37.33163361, -122.03031807),
        icon: BitmapDescriptor.fromAsset("assets/images/marker.png")
    ),
  ];
}
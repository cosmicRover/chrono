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

// List<Marker> routeMarker = [
//    Marker(
//         markerId: MarkerId('mark2'),
//         draggable: true,
//         position: LatLng(45.5051, -122.6750),
//         icon: BitmapDescriptor.fromAsset("assets/images/marker.png")
//     ),
//     Marker(
//         markerId: MarkerId('mark3'),
//         draggable: true,
//         position: LatLng(44.054347, -123.078102),
//         icon: BitmapDescriptor.fromAsset("assets/images/marker.png")
//     ),
//     Marker(
//         markerId: MarkerId('mark4'),
//         draggable: true,
//         position: LatLng(43.205053,-123.380912),
//         icon: BitmapDescriptor.fromAsset("assets/images/marker.png")
//     ),
//     Marker(
//         markerId: MarkerId('mark5'),
//         draggable: true,
//         position: LatLng(42.322782, -122.860457,),
//         icon: BitmapDescriptor.fromAsset("assets/images/marker.png")
//     ),
//     Marker(
//         markerId: MarkerId('mark5'),
//         draggable: true,
//         position: LatLng(40.640643,-122.427948,),
//         icon: BitmapDescriptor.fromAsset("assets/images/marker.png")
//     ),
//     Marker(
//         markerId: MarkerId('mark5'),
//         draggable: true,
//         position: LatLng(39.728933, -122.213667,),
//         icon: BitmapDescriptor.fromAsset("assets/images/marker.png")
//     ),
//  Marker(
//         markerId: MarkerId('mark6'),
//         draggable: true,
//         position: LatLng(39.506890, -122.203047),
//         icon: BitmapDescriptor.fromAsset("assets/images/marker.png")
//     ),
// ];
  
}


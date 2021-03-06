import 'package:chrono/choose_location/choose_location.dart';
import 'package:chrono/destination_view/destination_view.dart';
import 'package:chrono/intro/intro_page.dart';
import 'package:chrono/map_view/map_view.dart';
import 'package:chrono/pick_car/pick_car.dart';
import 'package:chrono/safe_travels/safe_travels.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        debugShowCheckedModeBanner: false,
        home: IntroPage());
  }
}

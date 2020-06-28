import 'package:chrono/app_constants/colors.dart';
import 'package:chrono/destination_view/destination_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:async';

class SaveTravelsView extends StatefulWidget {
  final String time;
  final String car;

  const SaveTravelsView(this.time, this.car);

  @override
  _SaveTravelsViewState createState() => _SaveTravelsViewState();
}

class _SaveTravelsViewState extends State<SaveTravelsView> {
  waitThenNavigate() async {
    var duration = Duration(seconds: 3);
    return Timer(duration, () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => DestinationView(widget.time, widget.car)));
    });
  }

  @override
  void initState() {
    waitThenNavigate();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Container(
              height: _height,
              width: _width,
              child: Image.asset(
                "assets/images/safe_travels.gif",
                fit: BoxFit.cover,
              ),
            ),
            Center(
              child: SvgPicture.asset("assets/images/travel_overlay.svg"),
            ),
            Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/triangle.gif",
                  height: 110.0,
                ),
                Text(
                  "Safe Travels!",
                  style: TextStyle(
                      fontFamily: "Streamster",
                      color: CustomColors.orange,
                      fontSize: 46.0),
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}

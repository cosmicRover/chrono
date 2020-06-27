import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IntroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: SvgPicture.asset(
              "assets/images/plant.svg",
              fit: BoxFit.contain,
              height: 100.0,
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: SvgPicture.asset(
              "assets/images/plant.svg",
              fit: BoxFit.contain,
              height: 100.0,
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: SvgPicture.asset(
              "assets/images/plant.svg",
              fit: BoxFit.contain,
              height: 100.0,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SvgPicture.asset(
              "assets/images/plant.svg",
              fit: BoxFit.contain,
              height: 100.0,
            ),
          ),

          RaisedButton(child: Text("Wowowowo"), onPressed: ()=> print("wowowo"),)

        ],
      ),
    );
  }
}

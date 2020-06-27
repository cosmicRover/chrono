import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

class Frame1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
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
      ],
    );
  }
}

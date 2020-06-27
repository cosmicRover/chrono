import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

class Frame2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;

    return Stack(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: SvgPicture.asset(
            "assets/images/left-stick.svg",
            fit: BoxFit.contain,
            height: _height,
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: SvgPicture.asset(
            "assets/images/stick.svg",
            fit: BoxFit.contain,
            height: _height,
          ),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: SvgPicture.asset(
            "assets/images/newHeader.svg",
            fit: BoxFit.contain,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 25.0),
          child: Align(
              alignment: Alignment.topCenter,
              heightFactor: 20.0,
              child: Image.asset("assets/images/logo.gif", height: 100.0,)
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: SvgPicture.asset(
            "assets/images/newBottom.svg",
            fit: BoxFit.contain,
          ),
        ),
      ],
    );
  }
}

import 'package:chrono/app_constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MapButton extends StatelessWidget {
  final countDownText;

  const MapButton(this.countDownText);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 106,
      width: 194,
      decoration: BoxDecoration(
          image:
              DecorationImage(image: AssetImage("assets/images/button.png"))),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(
              "Waiting time",
              style: TextStyle(
                  fontSize: 27,
                  color: CustomColors.purple,
                  fontFamily: "Astron1"),
            ),
          ),
          Text(
            "${countDownText}",
            style: TextStyle(
                fontSize: 55,
                color: CustomColors.deepPurple,
                fontFamily: "Astron2"),
          ),
        ],
      ),
    );
  }
}

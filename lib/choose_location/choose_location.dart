import 'package:chrono/app_constants/colors.dart';
import 'package:chrono/resuable_widgets/frame1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChooseLocation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;

    return Scaffold(
        body: Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  colors: [CustomColors.darkBlack, CustomColors.darkBlue])),
          child: Expanded(
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 76),
                  child: Image.asset("assets/images/location_title.png"),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12),
                  child: SvgPicture.asset("assets/images/search_bar.svg"),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 24),
                  child: Image.asset("assets/images/choose_time.png"),
                ),
                GestureDetector(
                  onTap: () {
                    //set up data structure
                  },
                  child: Image.asset("assets/images/1.png"),
                ),
                GestureDetector(
                  onTap: () {
                    //set up data structure
                  },
                  child: Image.asset("assets/images/2.png"),
                ),
                GestureDetector(
                  onTap: () {
                    //set up data structure
                  },
                  child: Image.asset("assets/images/3.png"),
                ),
              ],
            ),
          ),
        ),
        Frame1(),
        Padding(
          padding: const EdgeInsets.only(bottom: 35.0, left: 64, right: 64),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Image.asset(
              "assets/images/choose.gif",
            ),
          ),
        ),
        SizedBox(
          height: 75,
        )
      ],
    ));
  }
}

import 'package:chrono/app_constants/colors.dart';
import 'package:chrono/pick_car/pick_car.dart';
import 'package:chrono/resuable_widgets/fram2.dart';
import 'package:chrono/resuable_widgets/frame1.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  @override
  Widget build(BuildContext context) {
    var selectedColor = CustomColors.lightOrange;
    String selectedTime;

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
                FlatButton(
                  onPressed: () {
                    selectedTime = "4320";
                  },
                  child: Image.asset(
                    "assets/images/1.png",
                  ),
                ),
                FlatButton(
                  onPressed: () {
                    selectedTime = "2025";
                  },
                  child: Image.asset("assets/images/2.png"),
                ),
                FlatButton(
                  onPressed: () {
                    selectedTime = "1950";
                  },
                  child: Image.asset("assets/images/3.png"),
                ),
              ],
            ),
          ),
        ),
        Frame2(),
        Padding(
          padding: const EdgeInsets.only(bottom: 15.0, left: 64, right: 64),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: GestureDetector(
              onTap: () {
                if (selectedTime != null) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PickCar(selectedTime)));
                }
              },
              child: Image.asset(
                "assets/images/choose.gif",
              ),
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

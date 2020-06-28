import 'package:chrono/app_constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';

class CustomDialog extends StatelessWidget {
  // final String title,
  //     planet,
  //     year,
  //     civilization;

  // CustomDialog(
  //     {@required this.title,
  //     @required this.planet,
  //     @required this.year,
  //     @required this.civilization});

  static const double padding = 20.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 321,
      width: 355,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage("assets/images/1950.gif"))
      ),
      child: Text("hello"),
    );
    
  }
}

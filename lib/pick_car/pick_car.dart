import 'package:chrono/app_constants/colors.dart';
import 'package:chrono/resuable_widgets/fram2.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:chrono/resuable_widgets/frame1.dart';

class PickCar extends StatefulWidget {
  PickCar() : super();

  @override
  PickCarState createState() => PickCarState();
}

class PickCarState extends State<PickCar> {
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [CustomColors.darkBlack, CustomColors.darkBlue],
                    begin: Alignment.topCenter)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
              
                Padding(
                                  child: CarouselSlider(
                    options:
                        CarouselOptions(height: _height-40, enlargeCenterPage: true),
                    items: imgList.map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                            child: Image.asset(
                              i,
                              fit: BoxFit.fitWidth,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                            ),
                          );
                        },
                      );
                    }).toList(),
                  ),
                  padding: EdgeInsets.only(top:40),
                )
              ],
            ),
          ),
          Frame2(),
         
          Padding(
            child: Align(
              child: Image.asset(
                'assets/images/request.gif',
              ),
              alignment: Alignment.bottomCenter,
            ),
            padding: EdgeInsets.only(bottom: 10, right: 50, left: 50),
          ),
           Padding(
                        child: Align(
                    child: Text(
                      "Select a vehicle",
                      style: TextStyle(
                          fontFamily: "Windows",
                          color: Colors.white,
                          fontSize: 35),
                    ),
                    alignment: Alignment.topCenter,
                  ),
                  padding: EdgeInsets.only(top:100),
           ),
        ],
      ),
    );
  }
}

List imgList = ['assets/images/rocket.gif', 'assets/images/horse.gif'];

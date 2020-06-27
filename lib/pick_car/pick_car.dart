import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class PickCar extends StatefulWidget {
  PickCar() : super();

  @override
  PickCarState createState() => PickCarState();
}

class PickCarState extends State<PickCar> {
  

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CarouselSlider(
              options: CarouselOptions(height: 400),
              items: imgList.map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      
                      margin: EdgeInsets.symmetric(horizontal:20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: i,
                      ),
                    );
                  },
                );
              }).toList(),
            )
          ],
        ),
      ),
    );
  }
}

List imgList = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.yellow
  ];

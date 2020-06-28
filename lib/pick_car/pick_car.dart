import 'package:chrono/app_constants/colors.dart';
import 'package:chrono/map_view/map_view.dart';
import 'package:chrono/resuable_widgets/fram2.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class PickCar extends StatefulWidget {
  final String time;

  const PickCar(this.time);

  @override
  PickCarState createState() => PickCarState();
}

class PickCarState extends State<PickCar> {
  String imagePath;

  @override
  void initState() {
    print("passed time: ${widget.time}");
    super.initState();
  }

  updateItem(String i){
    imagePath = i;
  }

  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;

    CarouselController buttonCarouselController = CarouselController();

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
                    options: CarouselOptions(
                        height: _height - 40, enlargeCenterPage: true,
                      carouselController: buttonCarouselController,
                    ),
                    items: imgList.map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return GestureDetector(
                            onTap: (){
                              updateItem(i);
                            },
                            child: Container(
                              child: Image.asset(
                                i,
                                fit: BoxFit.fitWidth,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                              ),
                            ),
                          );
                        },
                      );
                    }).toList(),
                  ),
                  padding: EdgeInsets.only(top: 40),
                )
              ],
            ),
          ),
          Frame2(),
          Padding(
            child: GestureDetector(
              onTap: () {
                buttonCarouselController.toString();
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MapView(widget.time, imagePath)));
              },
              child: Align(
                child: Image.asset(
                  'assets/images/request.gif',
                ),
                alignment: Alignment.bottomCenter,
              ),
            ),
            padding: EdgeInsets.only(bottom: 10, right: 50, left: 50),
          ),
          Padding(
            child: Align(
              child: Text(
                "Select a vehicle",
                style: TextStyle(
                    fontFamily: "Windows", color: Colors.white, fontSize: 35),
              ),
              alignment: Alignment.topCenter,
            ),
            padding: EdgeInsets.only(top: 100),
          ),
        ],
      ),
    );
  }
}

List imgList = [
  'assets/images/rocket.gif',
  'assets/images/horse.gif',
  'assets/images/car.gif',
  'assets/images/cycle.gif'
];

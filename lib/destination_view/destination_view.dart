import 'package:chrono/app_constants/colors.dart';
import 'package:chrono/intro/intro_page.dart';
import 'package:chrono/resuable_widgets/fram2.dart';
import 'package:chrono/resuable_widgets/frame3.dart';
import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'package:chrono/resuable_widgets/custom_dialog.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class DestinationView extends StatefulWidget {
  final String time;
  final String car;

  const DestinationView(this.time, this.car);

  @override
  _DestinationViewState createState() => _DestinationViewState();
}

class _DestinationViewState extends State<DestinationView> {
  Widget customGif(String time) {
    print(time);

    switch (time) {
      case "1950":
        return Image.asset("assets/images/1950back.gif", fit: BoxFit.fill);
      case "2025":
        return Image.asset("assets/images/2025.gif", fit: BoxFit.fill);
      case "4320":
        return Image.asset("assets/images/nomicon.gif", fit: BoxFit.fill);
    }
  }

Widget customText(String time) {
    print(time);

    switch (time) {
      case "1950":
        return Text(
                  destinationDescription[1],
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontFamily: 'Astron2',
                  ),
                );
      case "2025":
        return Text(
                  destinationDescription[0],
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontFamily: 'Astron2',
                  ),
                );
      case "4320":
        return Text(
                  destinationDescription[2],
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontFamily: 'Astron2',
                  ),
                );
    }
  }

  List<String> destinationDescription = [
    "Planet Cetza was once home to an ancient civilization known for their intricate architecture. Years of drastic climate change has turned their famous cities into desert towns, but there is still plenty of beauty to be seen here.",
    "Planet Earth is known for its many beautiful locations, with Paris being one of its most scenic cities. Return to the past to tour the famous city of love while wondering at its retro style and fantastic cuisine.",
    "Although Planet Zumar looks like an endless desert at first glance, this is actually a clever defense system to dissuade invaders. The actual city is deep below ground and is well known for its mining exports and technology."
  ];

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;

    return Scaffold(
        //TODO ADD GRADIENT TO BACKGROUND
        backgroundColor: CustomColors.darkBlue,
        body: Stack(
          children: [
            Expanded(
                child: ListView(children: [
              customGif(widget.time),
              Image.asset("assets/images/about.png"),
              Padding(
                child: customText(widget.time),
                padding: EdgeInsets.all(40),
              ),
              Image.asset("assets/images/rateyo.png"),
              Padding(
                padding: EdgeInsets.only(top: 40, left: _width / 4),
                child: RatingBar(
                  initialRating: 3,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
              ),
              Padding(
                child: Text(
                  "Tips Are Greatly Appreciated",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontFamily: 'Astron2',
                  ),
                ),
                padding: EdgeInsets.only(top: 40, left: _width / 4.5),
              ),
              Padding(
                padding: EdgeInsets.only(top: 40, left: _width / 4),
                child: RatingBar(
                  initialRating: 2,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 3,
                  itemPadding: EdgeInsets.all(12),
                  itemBuilder: (context, _) => Image.asset(
                    "assets/images/btc.png",
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
              ),
              GestureDetector(
                child: Image.asset("assets/images/done.gif"),
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => IntroPage()));
                },
              ),
            ])),
            Frame3(),
          ],
        ));
  }
}

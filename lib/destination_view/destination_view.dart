import 'package:chrono/app_constants/colors.dart';
import 'package:chrono/intro/intro_page.dart';
import 'package:chrono/resuable_widgets/fram2.dart';
import 'package:chrono/resuable_widgets/frame3.dart';
import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'package:chrono/resuable_widgets/custom_dialog.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class DestinationView extends StatefulWidget {
  DestinationView() : super();
  @override
  DestinationViewState createState() => DestinationViewState();
}

class DestinationViewState extends State<DestinationView> {
  @override
  void initState() {
    super.initState();
  }

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
              Image.asset("assets/images/nomicon.gif", fit: BoxFit.fill),
              Image.asset("assets/images/about.png"),
              Padding(
                child: Text(
                  "Planet Xnomicon was born from a star named XLT347 after it was conquered by Xnomicans who use the energy of this planet to make rocks for their galaxy. ",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontFamily: 'Astron2',
                  ),
                ),
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
              GestureDetector(child: Image.asset("assets/images/done.gif"),
              onTap: (){
                Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => IntroPage()));
              },),
            ])),
            Frame3(),
          ],
        ));
  }
}

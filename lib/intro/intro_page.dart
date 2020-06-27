import 'package:chrono/choose_location/choose_location.dart';
import 'package:chrono/resuable_widgets/frame1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;
    return Expanded(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/home.gif"),
                    fit: BoxFit.fill),
              ),
            ),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ChooseLocation()));
                },
                child: Container(
                  child: Stack(
                    children: [
                      //TODO: Fix image placement issues
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Image.asset(
                          'assets/images/button.gif',
                          height: 270,
                          width: _width,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Image.asset('assets/images/GO.gif'),
                      ),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}

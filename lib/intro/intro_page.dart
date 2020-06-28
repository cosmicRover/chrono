import 'package:chrono/app_constants/colors.dart';
import 'package:chrono/choose_location/choose_location.dart';
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
                      Padding(
                        padding: EdgeInsets.only(left:8),
                        child:Align(
                        alignment: Alignment.bottomCenter,
                        child: Image.asset(
                          'assets/images/button.gif',
                          height: 270,
                          width: _width,
                        ),
                      ),),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Image.asset('assets/images/GO.gif'),
                      ),
                    ],
                  ),
                )),
            Padding(
              child: Align(
                child: Text("Timeless Travels",
                    style: TextStyle(color: CustomColors.purple, fontSize: 46, fontFamily: 'Streamster')),
                alignment: Alignment.topCenter,
                
              ),
              padding: EdgeInsets.only(top:200)
            )
          ],
        ),
      ),
    );
  }
}

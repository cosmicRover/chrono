import 'package:chrono/resuable_widgets/frame1.dart';
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
            Image.asset(
              'assets/images/home.gif',
              height: _height,
              width: _width,
              fit: BoxFit.fill,
            ),
            GestureDetector(
              onTap: () => print("tapped go"),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Image.asset('assets/images/GO.gif'),
              ),
            ),
            Align(
              child: Image.asset(
                'assets/images/button.gif',
                alignment: Alignment.centerRight,
                height: 150,
                width: 150,
              ),
            )
          ],
        ),
      ),
    );
  }
}

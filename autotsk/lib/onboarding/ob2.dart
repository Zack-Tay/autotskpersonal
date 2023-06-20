import 'package:flutter/material.dart';
import 'package:autotsk/util/color.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnboardingSecond extends StatefulWidget {
  const OnboardingSecond({super.key});

  @override
  State<OnboardingSecond> createState() => _OnboardingSecondState();
}

class _OnboardingSecondState extends State<OnboardingSecond> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      // width and height to be edited to be proportional
      // to the page instead of hard coding values.
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        /* borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50),
                topRight: Radius.circular(50),
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              ), */
        gradient: LinearGradient(
            begin: Alignment(-1.0762932300567627, -2.155672550201416),
            end: Alignment(2.155672788619995, -5.058534145355225),
            colors: [
              mainLightBgColour,
              mainLightBgColour2,
            ]),
      ),

      child: Column(
        children: <Widget>[
          // autoTsk logo image
          SizedBox(height: 40),
          Row(children: <Widget>[
            Image(
              image: AssetImage('assets/logobg.png'),
            ),
            SizedBox(width: 0),
          ]),
          // Avatar in the middle of the page image
          Image(
            image: AssetImage('assets/orb2avatarbg.png'),
            height: 400,
          ),

          Stack(
            children: <Widget>[
              // Container for short description
              Container(
                  width: 350,
                  height: 200,
                  child: Text(
                    'short description of onboarding process',
                    style: TextStyle(
                      fontFamily: 'Neometric',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  )),

              Stack(
                children: <Widget>[
                  // sign in button
                  Image(
                    image: AssetImage('assets/ControlMenu.jpg'),
                  ),

                  Text(
                    'Sign in',
                    style: TextStyle(
                        fontFamily: 'Neometric',
                        fontSize: 20,
                        color: mainLightBgColour),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    ));
  }
}

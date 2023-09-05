


import 'dart:async';

import 'package:flutter/material.dart';
import 'package:gtr_assignment/constants/app_constants.dart';
import 'package:gtr_assignment/views/onboarding/onboarding_screen.dart';
import 'package:gtr_assignment/views/onboarding/widgets/page_one.dart';

class MySplashScreen extends StatefulWidget {
  const MySplashScreen({Key? key}) : super(key: key);

  @override
  _MySplashScreenState createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {
  startTimer() {
    Timer(Duration(seconds: 6),() => Navigator.push(context, MaterialPageRoute(builder: (context)=> OnBoardingScreen())));
  }

  @override
  void initState() {
    super.initState();

    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Color(firstColor.value),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/splash_img.png'),
              Padding(
                padding: const EdgeInsets.all(10.0),
              ),
            
            ],
          ),
        ),
      ),
    );
  }
}
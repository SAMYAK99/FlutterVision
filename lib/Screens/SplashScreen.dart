import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vision/Screens/AppIntro.dart';

import 'HomePage.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Home())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          margin: EdgeInsets.symmetric(vertical: 200),
          alignment: Alignment.center,
          child: Column(
            children: [
              Center(
                child: Container(
                  height: 250,
                  width: 250,
                  child: Image.asset('assets/images/logo.png'),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                'Flutter',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
              ),
              Text(
                'Vision',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ));
  }
}

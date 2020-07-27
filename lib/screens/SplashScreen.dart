import 'dart:async';

import 'package:belajar_ui_flutter/animation/FadeAnimation.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  _startTime() async {
    var _duration = Duration(seconds: 5);
    return Timer(_duration, navigatorHome);
  }

  void navigatorHome() {
    Navigator.of(context).pushReplacementNamed("/home");
  }

  @override
  void initState() {
    super.initState();
    _startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: FadeAnimation(
          1,
          Image.asset(
            'images/logo.png',
          ),
        ),
      ),
    );
  }
}

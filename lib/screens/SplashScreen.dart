import 'dart:async';

import 'package:belajar_ui_flutter/animation/FadeAnimation.dart';
import 'package:belajar_ui_flutter/routing/const_routing.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation _animation;

  _startTime() async {
    var _duration = Duration(seconds: 5);
    return Timer(_duration, navigatorHome);
  }

  void navigatorHome() {
    Navigator.of(context).pushReplacementNamed(onBoardingRoute2);
  }

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    _animation = Tween(begin: 0.0, end: 1.0).animate(_controller);
    _startTime();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _controller.forward();
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: FadeTransition(
          opacity: _animation,
          child: Image.asset(
            'images/logo075x.png',
          ),
        ),
      ),
    );
  }
}

import 'package:belajar_ui_flutter/components/slide_tile.dart';
import 'package:belajar_ui_flutter/models/onboarding_data.dart';
import 'package:flutter/material.dart';

class OnBoarding extends StatefulWidget {
  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  List<SliderModel> sliderModel = List<SliderModel>();
  int slideIndex = 0;
  PageController _controller;

  @override
  void initState() {
    super.initState();
    sliderModel = getSlides();
    _controller = PageController();
  }

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
          height: mediaQuery.size.height - 56,
          child: PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                slideIndex = index;
              });
            },
            children: <Widget>[
              SliderTile(
                imagePath: 'images/undraw_contract_uy56.png',
                title: 'text',
                desc: 'text',
              ),
              SliderTile(
                imagePath: 'images/undraw_contract_uy56.png',
                title: 'text',
                desc: 'text',
              ),
              SliderTile(
                imagePath: 'images/undraw_contract_uy56.png',
                title: 'text',
                desc: 'text',
              )
            ],
          )),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }
}

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
      bottomSheet: slideIndex != 2
          ? Container(
              margin: EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  FlatButton(
                    onPressed: () {
                      _controller.animateToPage(2,
                          duration: Duration(milliseconds: 400),
                          curve: Curves.linear);
                    },
                    child: Text(
                      "SKIP",
                      style: TextStyle(
                          color: Color(0xFF0074E4),
                          fontWeight: FontWeight.w600),
                    ),
                    splashColor: Colors.blue[50],
                  ),
                  Container(
                    child: Row(
                      children: [
                        for (int i = 0; i < 3; i++)
                          i == slideIndex
                              ? _buildPageIndicators(true)
                              : _buildPageIndicators(false)
                      ],
                    ),
                  ),
                  FlatButton(
                    onPressed: () {
                      print("This is slideIndex: $slideIndex");
                      _controller.animateToPage(slideIndex + 1,
                          duration: Duration(milliseconds: 500),
                          curve: Curves.linear);
                    },
                    child: Text(
                      "NEXT",
                      style: TextStyle(
                          color: Color(0xFF0074E4),
                          fontWeight: FontWeight.w600),
                    ),
                    splashColor: Colors.blue[50],
                  ),
                ],
              ),
            )
          : InkWell(
              onTap: () {
                print("GET STARTED");
              },
              child: Container(
                alignment: Alignment.center,
                color: Colors.blue,
                child: Text(
                  "GET STARTED",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w600),
                ),
              ),
            ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Widget _buildPageIndicators(bool isCurrentPage) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 2.0),
      height: isCurrentPage ? 10.0 : 6.0,
      width: isCurrentPage ? 10.0 : 6.0,
      decoration: BoxDecoration(
          color: isCurrentPage ? Colors.grey : Colors.grey[300],
          borderRadius: BorderRadius.circular(12.0)),
    );
  }
}

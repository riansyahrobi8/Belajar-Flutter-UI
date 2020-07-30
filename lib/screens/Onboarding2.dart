import 'package:belajar_ui_flutter/models/step_model.dart';
import 'package:flutter/material.dart';

class OnBOarding2 extends StatefulWidget {
  @override
  _OnBOarding2State createState() => _OnBOarding2State();
}

class _OnBOarding2State extends State<OnBOarding2> {
  List<StepModel> data = StepModel.getList;
  var _controller = PageController();
  var initialPage = 0;

  @override
  Widget build(BuildContext context) {
    _controller.addListener(() {
      setState(() {
        initialPage = _controller.page.round();
      });
    });

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[_appBar(), _body(_controller), _indicators()],
      ),
    );
  }

  Widget _appBar() {
    return Container(
      margin: EdgeInsets.only(top: 25.0),
      padding: EdgeInsets.all(12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              if (initialPage > 0)
                _controller.animateToPage(initialPage - 1,
                    duration: Duration(microseconds: 500),
                    curve: Curves.easeIn);
            },
            child: Container(
              height: 50.0,
              width: 50.0,
              decoration: BoxDecoration(
                  color: Colors.grey[50],
                  borderRadius: BorderRadius.all(Radius.circular(15.0))),
              child: Icon(Icons.arrow_back_ios),
            ),
          ),
          FlatButton(
              onPressed: () {
                if (initialPage < data.length)
                  _controller.animateToPage(data.length,
                      duration: Duration(microseconds: 500),
                      curve: Curves.easeInOut);
              },
              child: Text(
                "SKIP",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                    color: Colors.black),
              ))
        ],
      ),
    );
  }

  Widget _body(PageController pageController) {
    return Expanded(
        child: PageView.builder(
      itemBuilder: (context, index) {
        return Column(
          children: <Widget>[
            index == 1
                ? _displayText(data[index].desc)
                : _displayImage(data[index].id),
            SizedBox(
              height: 25.0,
            ),
            index == 1
                ? _displayImage(data[index].id)
                : _displayText(data[index].desc)
          ],
        );
      },
      itemCount: data.length,
      controller: _controller,
    ));
  }

  Widget _displayText(String desc) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 16.0),
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Text(
        desc,
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
            color: Colors.grey[600]),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget _displayImage(int path) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Image.asset(
        "images/onboarding/$path.png",
        height: MediaQuery.of(context).size.height * 0.5,
      ),
    );
  }

  Widget _indicators() {
    return Container(
      width: 90.0,
      height: 90.0,
      margin: EdgeInsets.symmetric(vertical: 12.0),
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.center,
            child: Container(
              width: 90.0,
              height: 90.0,
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation(Colors.purple),
                value: (initialPage + 1) / (data.length + 1),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: GestureDetector(
              onTap: () {
                if (initialPage < data.length)
                  _controller.animateToPage(initialPage + 1,
                      duration: Duration(microseconds: 500),
                      curve: Curves.easeIn);
              },
              child: Container(
                width: 65.0,
                height: 65.0,
                decoration: BoxDecoration(
                    color: Colors.purple,
                    borderRadius: BorderRadius.all(Radius.circular(100))),
                child: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

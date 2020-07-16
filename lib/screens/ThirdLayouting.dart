import 'package:flutter/material.dart';

class ThirdLayouting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          button(Colors.amber, 'TAP HERE'),
          button(Colors.blue, 'Click Me')
        ],
      ),
    );
  }

  RaisedButton button(Color color, String text) {
    return RaisedButton(
      color: color,
      onPressed: () {},
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      child: Text(
        text,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}

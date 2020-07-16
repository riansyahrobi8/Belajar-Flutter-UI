import 'package:flutter/material.dart';

class ButtonFactionallySizeBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      child: FractionallySizedBox(
        widthFactor: 0.5,
        heightFactor: 0.1,
        child: RaisedButton(
          onPressed: () {},
          child: Text("TAP HERE"),
        ),
      ),
    );
  }
}

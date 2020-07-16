import 'package:flutter/material.dart';

class ImageFittedBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      color: Colors.amber,
      width: 500.0,
      height: 500.0,
      child: FittedBox(
          fit: BoxFit.fitWidth, child: Image.asset('images/lake.jpg')),
    );
  }
}

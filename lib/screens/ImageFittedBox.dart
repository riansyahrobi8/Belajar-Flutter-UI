import 'package:flutter/material.dart';

class ImageFittedBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500.0,
      height: 500.0,
      child:
          FittedBox(fit: BoxFit.cover, child: Image.asset('images/lake.jpg')),
    );
  }
}

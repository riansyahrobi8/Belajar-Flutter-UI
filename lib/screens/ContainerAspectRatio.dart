import 'package:flutter/material.dart';

class ContainerAspectRatio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 4 / 3,
      child: Container(
          color: Colors.amber,
          width: 200.0,
          height: 100.0,
          child: Image.asset('images/lake.jpg')),
    );
  }
}

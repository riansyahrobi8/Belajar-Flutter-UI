import 'package:flutter/material.dart';

class ContainerAspectRatio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: Container(
          color: Colors.amber,
          child: Image.asset(
            'images/lake.jpg',
            fit: BoxFit.cover,
          )),
    );
  }
}

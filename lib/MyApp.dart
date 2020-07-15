import 'package:belajar_ui_flutter/screens/Home.dart';
import 'package:belajar_ui_flutter/screens/Layouting.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Belajar Flutter UI',
      debugShowCheckedModeBanner: false,
      home: Layouting(),
    );
  }
}

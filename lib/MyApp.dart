import 'package:belajar_ui_flutter/screens/FavoriteWidget.dart';
import 'package:belajar_ui_flutter/screens/Home.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Belajar Flutter UI',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter layout demo"),
        ),
        body: FavoriteWidget(),
      ),
    );
  }
}

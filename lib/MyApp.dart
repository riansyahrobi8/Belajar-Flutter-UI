import 'package:belajar_ui_flutter/screens/ButtonFactionallySizeBox.dart';
import 'package:belajar_ui_flutter/screens/CardLayoutBuilder.dart';
import 'package:belajar_ui_flutter/screens/ContainerAspectRatio.dart';
import 'package:belajar_ui_flutter/screens/FavoriteWidget.dart';
import 'package:belajar_ui_flutter/screens/Home.dart';
import 'package:belajar_ui_flutter/screens/ImageFittedBox.dart';
import 'package:belajar_ui_flutter/screens/Layouting2.dart';
import 'package:belajar_ui_flutter/screens/ThirdLayouting.dart';
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
        body: CardLayoutBuilder(),
      ),
    );
  }
}

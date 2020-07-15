import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final String nama = "Robi Dahariansyah";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter UI"),
        leading: Icon(Icons.menu),
      ),
      body: Text(
        "Hallo nama saya $nama",
        textAlign: TextAlign.center,
      ),
    );
  }
}

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
        body: Text.rich(
            TextSpan(text: "Hallo nama saya $nama", children: <TextSpan>[
          TextSpan(
              text: "Saya seorang flutter developer",
              style: TextStyle(color: Colors.blue, fontSize: 22.0)),
          TextSpan(
              text: "Saya suka coklat",
              style: TextStyle(fontWeight: FontWeight.bold))
        ])));
  }
}

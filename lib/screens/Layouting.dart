import 'package:flutter/material.dart';

class Layouting extends StatelessWidget {
  List<Color> _colors = [Colors.amber, Colors.amber[100]];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Layouting"),
        backgroundColor: Colors.amber,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          _buildButtonWithColor(),
          Expanded(child: _buildContainer()),
          _buildButtonWithoutColor()
        ],
      )),
    );
  }

  Widget _buildButtonWithColor() => RaisedButton(
        onPressed: () {},
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
        color: Colors.amber,
        child: Text(
          "Button With Color",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      );

  Widget _buildButtonWithoutColor() => RaisedButton(
        onPressed: () {},
        child: Text("Button Without Color"),
      );

  Widget _buildContainer() => Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: _colors)),
        child: _buildText("Hello World"),
      );

  Widget _buildText(String text) => Center(child: Text("$text"));
}

import 'package:flutter/material.dart';

class CardLayoutBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MediaQuery.of(context).orientation == Orientation.portrait
        ? LayoutPortarit()
        : LayoutLandscap();
  }
}

Widget _buildCard() {
  return Card(
    margin: const EdgeInsets.all(8.0),
    child: Center(
      child: Text("R"),
    ),
  );
}

class LayoutPortarit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Row(
            children: <Widget>[
              Expanded(
                  child: Container(
                child: _buildCard(),
              )),
              Expanded(
                  child: Container(
                child: _buildCard(),
              ))
            ],
          ),
        ),
        Expanded(
          child: Container(
            child: _buildCard(),
          ),
        ),
        Expanded(
          child: Row(
            children: <Widget>[
              Expanded(
                  child: Container(
                child: _buildCard(),
              )),
              Expanded(
                  child: Container(
                child: _buildCard(),
              ))
            ],
          ),
        ),
      ],
    );
  }
}

class LayoutLandscap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Column(
            children: <Widget>[
              Expanded(
                child: Container(
                  child: _buildCard(),
                ),
              ),
              Expanded(
                child: Container(
                  child: _buildCard(),
                ),
              )
            ],
          ),
        ),
        Expanded(
          child: Container(
            child: _buildCard(),
          ),
        ),
        Expanded(
          child: Column(
            children: <Widget>[
              Expanded(
                child: Container(
                  child: _buildCard(),
                ),
              ),
              Expanded(
                child: Container(
                  child: _buildCard(),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

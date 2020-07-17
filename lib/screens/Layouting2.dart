import 'package:belajar_ui_flutter/screens/FavoriteWidget.dart';
import 'package:flutter/material.dart';

class SecondLayouting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _buildButtonColumn(color, Icons.call, 'CALL'),
          _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
          _buildButtonColumn(color, Icons.share, 'SHARE')
        ],
      ),
    );

    return Scaffold(
        body: ListView(
      children: <Widget>[
        imageSection,
        titleSection,
        buttonSection,
        textSection
      ],
    ));
  }

  Widget imageSection = Image.asset(
    'images/lake.jpg',
    width: 600.0,
    height: 240.0,
    fit: BoxFit.cover,
  );

  Widget textSection = Container(
    padding: const EdgeInsets.all(32.0),
    child: Text(
      'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
      'Alps. Situated 1,578 meters above sea level, it is one of the '
      'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
      'half-hour walk through pastures and pine forest, leads you to the '
      'lake, which warms to 20 degrees Celsius in the summer. Activities '
      'enjoyed here include rowing, and riding the summer toboggan run.',
      softWrap: true,
    ),
  );

  Widget titleSection = Container(
    padding: const EdgeInsets.all(32.0),
    child: Row(
      children: <Widget>[
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Text(
                'Tempat Kemah',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Text(
              'Yogyakarta',
              style: TextStyle(color: Colors.grey[500]),
            )
          ],
        )),
        FavoriteWidget(),
      ],
    ),
  );

  Column _buildButtonColumn(Color color, IconData iconData, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          iconData,
          color: color,
        ),
        Container(
          margin: const EdgeInsets.only(top: 8.0),
          child: Text(
            label,
            style: TextStyle(
                fontSize: 12.0, fontWeight: FontWeight.w400, color: color),
          ),
        )
      ],
    );
  }
}

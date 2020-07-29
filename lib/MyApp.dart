import 'package:belajar_ui_flutter/screens/SplashScreen.dart';
import 'package:belajar_ui_flutter/screens/OnBoarding.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Belajar Flutter UI',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // appBar: AppBar(
        //   title: Text("Flutter layout demo"),
        // ),
        body: SplashScreen(),
      ),
      routes: <String, WidgetBuilder>{
        '/onboarding': (BuildContext context) => OnBoarding()
      },
    );
  }
}

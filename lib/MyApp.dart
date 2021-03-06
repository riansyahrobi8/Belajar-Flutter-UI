import 'package:belajar_ui_flutter/routing/const_routing.dart';
import 'package:belajar_ui_flutter/routing/router.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Belajar Flutter UI',
        debugShowCheckedModeBanner: false,
        initialRoute: splashRoute,
        onGenerateRoute: Router.generateRoute);
  }
}

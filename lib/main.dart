import 'package:flutter/material.dart';
import 'package:flutter_ap/app_screens/login.dart';
import 'package:flutter_ap/app_screens/routing.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return new MaterialApp(
      home: new LoginPage(),
      routes: routes,
      theme: new ThemeData(
        primaryColor: const Color(0xff455a64),
        primaryColorDark: const Color(0xff1c313a),
      ),
    );
  }

}





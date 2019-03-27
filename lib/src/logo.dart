import 'package:flutter/material.dart';

class Logo extends StatelessWidget{
  double height ;
  Logo({this.height});
  @override
  Widget build(BuildContext context) {
    return
       Image.asset(
          'images/db1.png',
          fit: BoxFit.contain,
          height: height,
          width: height,
        )
    ;
  }
//        Image.asset(
//          'images/ff.png',
//          fit: BoxFit.contain,
//          height: 80.0,
//          width: 40.0,
//        )
}
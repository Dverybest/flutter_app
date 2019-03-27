import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget{
  String text;
  IconData icon;
  Color color;
  VoidCallback onPressed;

  MenuItem({
    this.text,
      this.color,
      this.icon,
    this.onPressed
  });

  @override
  Widget build(BuildContext context) {

    return Expanded (
      child :Container(
        decoration: BoxDecoration(
          color: color
        ),
          child:FlatButton(
            onPressed: onPressed ,
        child : Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            icon,
            color: Colors.white,
            size: 35.0,
          ),
          Text(text,
            style: TextStyle(
                fontSize: 16.0,
                fontFamily: "Roboto",
                color:Colors.white,)
          )
        ],
      ),
    )));
  }

}
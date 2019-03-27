import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget{

  String text;
  VoidCallback onPressed;

  RoundButton({this.text,this.onPressed});
  @override
  Widget build(BuildContext context) {
    return
        RaisedButton(
            padding: EdgeInsets.symmetric(vertical: 12.0),
            color:const Color(0xff1c313a),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0),
            ),
            child: new Text(
              text,
              style: new TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                fontFamily: "Roboto",
              ),
            ),
            onPressed: onPressed,);

  }

}
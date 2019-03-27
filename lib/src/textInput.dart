import 'package:flutter/material.dart';


class TextInput extends StatelessWidget{

  IconData icon;
  String hintText;
  TextInputType textInputType;
  bool obscureText;

  TextInput(
  { this.icon,this.hintText,this.textInputType ,this.obscureText}

  );


  @override
  Widget build(BuildContext context) {

    return DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(const Radius.circular(25.0)),
          color:  new Color.fromRGBO(255, 255, 255, 0.2),),
        child:  TextFormField(
          keyboardType: textInputType,
          autofocus: false,
          obscureText:obscureText ,
          validator: (val)=>val.isEmpty?"can't be blank":null,
          onSaved: (String value){
          },
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
            fontFamily: "Roboto",
          ),
          decoration: InputDecoration(
            prefixIcon: Icon(
              icon,
              color: Colors.white,),
            hintText: hintText,
            hintStyle: TextStyle(
                color: Colors.white
            ),
            border: InputBorder.none,
            contentPadding: const EdgeInsets.all(15.0) ,
          ),
        ));
  }

}
import 'package:flutter/material.dart';
import 'package:flutter_ap/src/textInput.dart';
import 'package:flutter_ap/src/logo.dart';
import 'package:flutter_ap/src/roundbutton.dart';

class Register extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    void _Login(){
      Navigator.pop(context);
    }
    final userName = TextInput(
        icon:Icons.person,
        hintText:'UserName',
        textInputType: TextInputType.text,
        obscureText:false);
    final email = TextInput(
        icon:Icons.email,
        hintText:'Email',
        textInputType: TextInputType.emailAddress,
        obscureText:false);
    final password =  TextInput(
        icon:Icons.lock,
        hintText:'Password',
        textInputType: TextInputType.text,
        obscureText:true);
    final confirmPassword =  TextInput(
        icon:Icons.lock,
        hintText:'Confirm Password',
        textInputType: TextInputType.text,
        obscureText:true);
    final button = RoundButton(
      text:'Register',
    );
    final logo = Logo(height: 100.0,);

    return  Scaffold(

        body: new Form(
        child: new ListView(
        padding: EdgeInsets.only(top: 80.0,left: 24.0,right: 24.0),
        children: <Widget>[
            logo,
            SizedBox(height: 25.0),
            userName,
            SizedBox(height: 16.0),
            email,
            SizedBox(height: 16.0),
          password,
            SizedBox(height: 16.0),
          confirmPassword,
            SizedBox(height: 16.0),
          button,
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                FlatButton(
                  child:Text(
                      'Have an account? Login',
                      textAlign: TextAlign.center,
                      style:  TextStyle(
                          color: const Color.fromRGBO(255, 255, 255, 0.8),
                          fontSize: 14.0,
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.bold)),
                  onPressed:_Login,),
                FlatButton(
                  child:Text(
                      'Need Help?',
                      style:  TextStyle(
                          color: const Color.fromRGBO(255, 255, 255, 0.8),
                          fontSize: 14.0,
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.bold)),
                  onPressed: ()=>{},)

              ],
            )

        ])
        ),backgroundColor: const Color(0xff455a64)
        ,);
  }

}
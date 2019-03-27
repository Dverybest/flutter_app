import 'package:flutter/material.dart';
import 'package:flutter_ap/src/textInput.dart';
import 'package:flutter_ap/src/logo.dart';
import 'package:flutter_ap/src/roundbutton.dart';

class LoginPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    final bg = const Color(0xff455a64);
    final buttonColor = const Color(0xff1c313a);

    void _createAccount(){
      Navigator.pushNamed(context, '/register');
    }
    void _onLoginPressed(){

     // Navigator.pushNamed(context, '/dashboard');
      Navigator.pushReplacementNamed(context, '/dashboard');
      //Navigator.pop(context);
    }
    final email = TextInput(
        icon:Icons.email,
        hintText:'Email',
        textInputType: TextInputType.emailAddress,
        obscureText:false);
    final password =  TextInput(
        icon:Icons.email,
        hintText:'Password',
        textInputType: TextInputType.text,
        obscureText:true);

    final logo = Logo(height: 150.0,);
    final intro = Text(
      'QApp',
      style: TextStyle(
        fontSize: 20.0,
        fontFamily: "Roboto",
        fontWeight: FontWeight.w700,
        color:new Color.fromRGBO(255, 255, 255, 0.7),


      ),
    );

    final signupButton = RoundButton(
        text:'Login',
      onPressed: _onLoginPressed,
      );

    return new MaterialApp(
      title: 'Home Page',
      home: new Scaffold(
        body: new Form(
            
              child: new ListView(
                padding: EdgeInsets.only(top: 80.0,left: 24.0,right: 24.0),
                children: <Widget>[
                  logo,
                Container(
                   margin: new EdgeInsets.only(top: 20.0,bottom: 20.0),
                  child:Center(
                    child:intro,)
                  ),
                  SizedBox(height: 35.0),
                   email,
                  SizedBox(height: 16.0),
                  password,
                  SizedBox(height: 48.0),
                  signupButton,
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children:<Widget>[
                     new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                       FlatButton(
                        child:Text(
                           'Create Account',
                          textAlign: TextAlign.center,
                          style:  TextStyle(
                              color: const Color.fromRGBO(255, 255, 255, 0.8),
                              fontSize: 14.0,
                              fontFamily: "Roboto",
                              fontWeight: FontWeight.bold)),
                          onPressed: _createAccount,),
                        FlatButton(
                            child:Text(
                              'Need Help?',
                          style:  TextStyle(
                              color: const Color.fromRGBO(255, 255, 255, 0.8),
                              fontSize: 14.0,
                              fontFamily: "Roboto",
                              fontWeight: FontWeight.bold)),
                          onPressed: ()=>{},)

                    ],),
                  ],
                  )
                ],
              ),
        ),
        backgroundColor:const Color(0xff455a64)),
    );
  }

}
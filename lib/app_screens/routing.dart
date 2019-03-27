import 'package:flutter_ap/app_screens/login.dart';
import 'package:flutter_ap/app_screens/register.dart';
import 'package:flutter_ap/app_screens/dashboard.dart';

final routes = {
  '/login':(context)=>LoginPage(),
  '/register':(context)=>Register(),
  '/dashboard':(context)=>Dashboard()
};
/*new Container(
padding: EdgeInsets.only(top: 48.0,left: 24.0,right: 24.0),
child: new ListView(
children: <Widget>[
new Center(
child: new Text(
'Welcome to Login Page',
style: new TextStyle(
fontSize: 22.00,
fontWeight: FontWeight.bold,
),
),
),
new SizedBox(
height: 34.0,
),
new RaisedButton(
color: Colors.lightBlueAccent,
child: new Text(
'Go To Homepage',
style: new TextStyle(
color: Colors.white,
fontSize: 18.0,
),
),
onPressed: (){
Navigator.pushNamed(context, '/');
})
],
),
)*/
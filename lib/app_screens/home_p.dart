import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  static String tag = 'home-page';

  @override
  Widget build(BuildContext context) {
    final alucard = Hero(
      tag: 'hero',
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: CircleAvatar(
          radius: 72.0,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('assets/ff.jpg'),
        ),
      ),
    );

    final welcome = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Welcome Alucard',
        style: TextStyle(fontSize: 28.0, color: Colors.white),
      ),
    );

    final lorem = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'My Name is Charles Best and I am a Mobile(android and ios) Application Developer. I love making apps with flutter.',
        style: TextStyle(fontSize: 16.0, color: Colors.white),
      ),
    );

    final body = Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(28.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.blue,
          Colors.lightBlueAccent,
        ]),
      ),
      child: Column(
        children: <Widget>[alucard, welcome, lorem],
      ),
    );

    return Scaffold(
      body: body,
    );
  }
}













//
//class HomePage extends StatelessWidget{
//  @override
//  Widget build(BuildContext context) {
//    return new MaterialApp(
//      title: 'Home Page',
//      home: new Scaffold(
//        appBar: new AppBar(
//          title: new Text(
//            'Welcome Home',
//          ),
//        ),
//        body: new Center(
//          child: new Text(
//            'Welcome Home',
//            style: new TextStyle(
//              fontSize: 22.00,
//           fontWeight: FontWeight.bold,
//            ),
//          ),
//        ),
//      ),
//    );
//  }
//
//}
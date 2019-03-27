import 'package:flutter/material.dart';
import 'dart:io';

import 'package:flutter_ap/src/box_menu.dart';

class Dashboard extends StatelessWidget{


  @override
  Widget build(BuildContext context) {

  double height = MediaQuery.of(context).size.height;
  double width = MediaQuery.of(context).size.width;

  void _onPastQuestion(){
   // Navigator.pop(context);
  }
  void _onProfile(){

  }
  void _onInfo(){

  }
//  void _onExit(){
//   SystemChannels.platform.invokeMethod('SystemNavigator.pop');
//  }

    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: Container(
      child:Column(

        children: <Widget>[
          Expanded(
            flex: 2,
              child: Card(
                margin: EdgeInsets.fromLTRB(18.0,27,18.0,27),
                  elevation: 10.0,
                  child:Container(
                    child: Padding(
                        padding: EdgeInsets.fromLTRB(10.0, 0, 0, 10.0),
                      child:Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Text(
                            'Good Afternoon Charles Best',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Roboto",
                              color:const Color(0xff1c313a))
                        ),
                        SizedBox(height: 16.0),
                        Text(
                            'Please remember to update your details in the profile section below',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontFamily: "Roboto",
                              color:Colors.black,)
                        )
                      ],
                    ),
                  )),

        )),
          Expanded(
            flex: 1,
            child:  Row(
                children: <Widget>[
                  MenuItem(
                    text: 'PAST QUESTION',
                    color:const Color(0xff1c313a),
                    icon: Icons.menu,
                    onPressed: _onPastQuestion,
                  ),MenuItem(
                    text: 'LIBRARY BOOKS',
                    color:const Color(0xff787878),
                    icon: Icons.library_books,
                  )
                ]),
          ),
      Expanded(
          flex: 1,
          child:  Row(
            children: <Widget>[
              MenuItem(
                text: 'GOOGLE SEARCH',
                color:const Color(0xff787878),
                icon: Icons.search,
              ),MenuItem(
                text: 'PROFILE',
                color:const Color(0xff1c313a),
                icon: Icons.person,
              )
            ]),
          ),
          Expanded(
            flex: 1,
            child:  Row(
                children: <Widget>[
                  MenuItem(
                    text: 'ABOUT',
                    color:const Color(0xff1c313a),
                    icon: Icons.info,
                    onPressed: _onInfo,
                  ),MenuItem(
                    text: 'Exit',
                    color:const Color(0xff787878),
                    icon: Icons.exit_to_app,
                   // onPressed: _onExit,
                  )
                ]),
          ),
        ],
      ),

    ));
  }

//void _launchURL(String url) {
//
////   if(await canLaunch(url)){
////     await launch(url);
////   }else{
////     //_open( snapshot.data.articles.elementAt(index), context)
////   }
//url_launcher: ^5.0.1
//}

// void  _open(Articles articles,BuildContext context){
//  showModalBottomSheet(
//      context: context ,
//      builder: (BuildContext bc){
//        return Container(child: ListView(
//            padding: EdgeInsets.all(5.0),
//            children: <Widget>[
//              articles.imageUrl!=null? Image.network(articles.imageUrl,height: 200.0,fit: BoxFit.cover,):Icon(Icons.error,size: 70.0,),
//              SizedBox(height: 5.0,),
//              Text(articles.title,style: TextStyle(color: Colors.black87,fontSize: 18.0),textAlign: TextAlign.justify,),
//              SizedBox(height: 5.0,),
//              Text(articles.content,
//                style: TextStyle(color: Colors.black45,fontSize: 14.0),)],),);
//      });
//}
}
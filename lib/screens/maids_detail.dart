import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgets/ui_elements/title_default.dart';

class MaidPage extends StatelessWidget {
  final String title;
  MaidPage( this.title);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () {
          print('back button pressed');
        Navigator.pop(context ,false);
        return Future.value(false);
          },
        child:Scaffold(
           appBar: AppBar(
           title: Text(title),
       ),
          body: Column(
             crossAxisAlignment:CrossAxisAlignment.center,
            children: <Widget>[
             Image.asset('assets/user.png'),
             Container(
              padding:EdgeInsets.all(10.0) ,
              child: TitleDefault(title)
             ),
            Container(
              padding:EdgeInsets.all(10.0),
              color: Theme.of(context).accentColor,
              child: RaisedButton(
               child: Text('BACK'),
               onPressed: () => Navigator.pop(context ),
            ),),
              Container(
                padding:EdgeInsets.all(10.0),
                color: Theme.of(context).accentColor,
                child: RaisedButton(
                  child: Text('DELETE'),
                  onPressed: () => Navigator.pop(context ),
                ),),
        ],
      ),
    ),
    );
  }
}

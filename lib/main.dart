import 'package:flutter/material.dart';

import 'package:myTeam/loading.dart';
import 'package:myTeam/home.dart';

/*
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    //a constant variable
    //final wordPair = WordPair.random();

    return MaterialApp(
    theme: ThemeData(
          primaryColor:Colors.purple[900],
          ),
      home: RandomWords());  
  }
}*/


void main() {
  runApp(MaterialApp(  

    //changes the initial route
    initialRoute: '/',

    //routes having a Map datatype
    routes: {
      //base route (1st screen)
      '/':(context) => Loading(),
      '/home':(context) => TeamList(),
    },
  ));
}




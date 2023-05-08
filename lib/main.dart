import 'package:eduapp/screen/welcome_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


void main() => runApp(myapp());

class myapp extends StatelessWidget{
  Widget build(BuildContext){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor:Colors.white 
          ),
          home: welcomescreen(),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:eduapp/screen/home_screen.dart';


class branch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Another Page'),
      ),
      body: Center(
        child: Text('This is another page'),
      ),
    );
  }
}
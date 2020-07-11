import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'statusScreen.dart';
import 'loading_screen.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xff090C22),
        primaryColor: Color(0xff090C18),
      ),
      home: StartScreen(),
    );
  }
}


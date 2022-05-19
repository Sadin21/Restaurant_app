import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:restaurant_app/home.dart';
import 'package:restaurant_app/detail.dart';
import 'package:restaurant_app/welcome.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'Restaurant App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: WelcomePage(),
    );
  }
}



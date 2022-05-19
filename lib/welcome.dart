import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:restaurant_app/home.dart';

class WelcomePage extends StatefulWidget {
  @override 
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage("https://images.pexels.com/photos/3297807/pexels-photo-3297807.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
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
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      // floatingActionButton: Chip(
      //     backgroundColor: Colors.orange,
      //     padding: EdgeInsets.fromLTRB(55, 12, 55, 12),
      //     label: Text("masuk",
      //         style: TextStyle(
      //             fontSize: 18.0,
      //             fontWeight: FontWeight.bold,
      //             color: Colors.white
      //         )
      //     ),
      // ),
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
          SizedBox(height: 8.0,),
          FloatingActionButton.extended(
            backgroundColor: Colors.orange,
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => HomePage()));
            },
            label: Text(
              "masuk",
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
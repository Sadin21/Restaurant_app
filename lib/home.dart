import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:restaurant_app/detail.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            AppBar(
              leading: Padding(
                padding: const EdgeInsets.only(left: 25.0,),
                child: CircleAvatar(
                    backgroundImage: NetworkImage(
                      "https://cdn.vectorstock.com/i/1000x1000/31/95/user-sign-icon-person-symbol-human-avatar-vector-12693195.webp"),
                  ),
              ),
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 25.0),
                  child: IconButton(
                  icon: Icon(
                    Icons.notification_add_outlined,
                    color: Colors.black,
                    size: 30.0,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                ),
              ],
              backgroundColor: Colors.white,
              elevation: 0,
            ),
            Container(
              padding: EdgeInsets.only(left: 25.0, top: 30.0, right: 25.0),
              child: Column(
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Hello, Daffa!",
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Make your own food,",
                        style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "stay at ",
                        style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "home",
                        style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.orange,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    height: 80.0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        buildTopChip("Jawa", true),
                        buildTopChip("Sumatra", false),
                        buildTopChip("Kalimantan", false),
                        buildTopChip("Bali", false),
                        buildTopChip("Sulawesi", false),
                        buildTopChip("Nusa Tenggara", false),
                        buildTopChip("Papua", false),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              child: Expanded(
                child: ListView(
                children: <Widget>[
                  buildItem(
                      "Masakan Jawa",
                      "100 jenis - sayuran, daging, buah",
                      "https://images.pexels.com/photos/3338537/pexels-photo-3338537.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                      4.5),
                  buildItem(
                      "Masakan Sumatra",
                      "100 jenis - sayuran, daging, buah",
                      "https://images.pexels.com/photos/33162/food-restaurant-menu-asia.jpg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                      4.5),
                  buildItem(
                      "Masakan Kalimantan",
                      "100 jenis - sayuran, daging, buah",
                      "https://images.pexels.com/photos/3008740/pexels-photo-3008740.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                      4.5),
                  buildItem(
                      "Masakan Bali",
                      "100 jenis - sayuran, daging, buah",
                      "https://images.pexels.com/photos/2689419/pexels-photo-2689419.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                      4.5),
                  buildItem(
                      "Masakan Sulawesi",
                      "100 jenis - sayuran, daging, buah",
                      "https://images.pexels.com/photos/958545/pexels-photo-958545.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                      4.5),
                  buildItem(
                      "Masakan Nusa Tenggara",
                      "100 jenis - sayuran, daging, buah",
                      "https://images.pexels.com/photos/218769/pexels-photo-218769.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                      4.5),
                  buildItem(
                      "Masakan Papua",
                      "100 jenis - sayuran, daging, buah",
                      "https://images.pexels.com/photos/628777/pexels-photo-628777.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                      4.5),
                ],
              )),
            ),
          ],
        ),
      ),
    );
  }

  GestureDetector buildItem(String title, String subTitle, String url, double rating) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => DetailPage(url)));
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 15.0),
        padding: EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          children: <Widget>[
            Hero(
              tag: url,
                child: Container(
                height: 200,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(url),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10.0),  
                      topRight: Radius.circular(10.0),
                    )),
              ),
            ),
            Container(
              padding: EdgeInsets.all(25.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0)),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 2.0, spreadRadius: 1.0, color: Colors.grey)
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        title,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16.0),
                      ),
                      Text(
                        subTitle,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12.0,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.orange,
                    child: Text(
                      rating.toString(),
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container buildTopChip(String label, bool isActive) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5.0),
      child: Chip(
        padding: EdgeInsets.all(8.0),
        label: Text(
          label,
          style: TextStyle(color: Colors.white, fontSize: 16.0),
        ),
        backgroundColor: isActive ? Colors.orange : Colors.grey,
      ),
    );
  }
}


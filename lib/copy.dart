import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'Restaurant App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.shopping_basket,
              color: Colors.black,
            ),
            onPressed: () {},
          )
        ],
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left:16.0, top:16.0),
              child: Text(
                'Eat Healthy',
                style: TextStyle(
                  fontSize: 28,
                  fontFamily : 'Montserrat',
                  ),
                ),
            ),
            Container(
              padding: EdgeInsets.only(left:16.0),
              child: Text(
                'Our daily healthy meals plans',
                style: TextStyle(
                  fontSize: 14,
                  // fontFamily : 'Montserrat',
                  ),
                ),
            ),
            Container(
              height: 230,
              child: ListView(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left:16.0, top:16.0, right:16.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        'assets/images/kawah-putih.jpg',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left:16.0, top:16.0),
              child: Text(
                'Popular',
                style: TextStyle(
                  fontSize: 18,
                  fontFamily : 'Montserrat',
                  ),
                ),
            ),
            Container(
              height: 180,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left:16.0, top:16.0, right:8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        'assets/images/bosscha.jpg',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:16.0, right:8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        'assets/images/farm-house.jpg',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right:16.0, top:16.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        'assets/images/kawah-putih.jpg',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left:16.0, top:16.0),
              child: Text(
                'Special Menu',
                style: TextStyle(
                  fontSize: 18,
                  fontFamily : 'Montserrat',
                  ),
                ),
            ),
            Container(
              padding: EdgeInsets.only(left:16.0),
              child: Row(
                children: <Widget>[
                  Container(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'assets/images/kawah-putih.jpg',
                      ),
                    ),
                    height: 100,
                    width: 100,
                  ),
                  Expanded(
                    child: Text(
                      'Second Widget',
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
}


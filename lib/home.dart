import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'common.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/logo.png',
          height: 64,
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: <Widget>[
          Container(child: Image.asset('assets/banner.png')),
          Container(
            margin: EdgeInsets.only(top: 28),
            child: Text(
              'Menu',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            height: 100,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return Image.asset('assets/food.png');
              },
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(width: 10);
              },
              itemCount: 10,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 28),
            child: Text(
              'Deals',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 0),
            child: Image.asset('assets/banner.png'),
          ),
          Container(
            margin: EdgeInsets.only(top: 6),
            child: Text(
              '*Nulla in pulvinar libero. Suspendisse fermentum erat in odio auctor malesuada. Vivamus rutrum faucibus purus sodales interdum. Nunc eu ornare nisl. Sed at turpis suscipit metus egestas eleifend sit amet dignissim felis. Donec eleifend orci in leo porttitor mollis. Fusce consequat iaculis dapibus.',
              style: TextStyle(
                fontSize: 10,
                color: Colors.grey,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Image.asset('assets/banner.png'),
          ),
          Container(
            margin: EdgeInsets.only(top: 6),
            child: Text(
              '*Nulla in pulvinar libero. Suspendisse fermentum erat in odio auctor malesuada. Vivamus rutrum faucibus purus sodales interdum. Nunc eu ornare nisl. Sed at turpis suscipit metus egestas eleifend sit amet dignissim felis. Donec eleifend orci in leo porttitor mollis. Fusce consequat iaculis dapibus.',
              style: TextStyle(
                fontSize: 10,
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: myBottomBar(
        context,
        currentIndex: 0,
      ),
    );
  }
}

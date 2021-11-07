import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'common.dart';

class MenuPage extends StatefulWidget {
  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  List<Map<String, dynamic>> _a = [
    {
      'name': 'Sandwiches',
      'image': 'assets/food.png',
      'route': '',
    },
    {
      'name': 'Beverages',
      'image': 'assets/food.png',
      'route': '',
    },
    {
      'name': 'Deals',
      'image': 'assets/food.png',
      'route': '',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.separated(
        padding: EdgeInsets.only(top: 20),
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Image.asset(_a[index]['image']),
            title: Text(
              _a[index]['name'],
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            trailing: Icon(Icons.navigate_next_rounded),
            onTap: () {},
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return Divider();
        },
        itemCount: _a.length,
      ),
      bottomNavigationBar: myBottomBar(
        context,
        currentIndex: 1,
      ),
    );
  }
}

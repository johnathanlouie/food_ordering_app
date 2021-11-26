import 'package:flutter/material.dart';
import 'package:lwd_food_ordering_app/common.dart';
import 'package:lwd_food_ordering_app/menu_category.dart';
import 'package:lwd_food_ordering_app/menu_item.dart';

class MenuPage extends StatefulWidget {
  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  final List<Map<String, dynamic>> _a = const [
    {
      'name': 'Main Dishes',
      'image': 'assets/food.png',
      'type': MenuItemType.mainDish,
    },
    {
      'name': 'Sides',
      'image': 'assets/food.png',
      'type': MenuItemType.sideDish,
    },
    {
      'name': 'Snacks',
      'image': 'assets/food.png',
      'type': MenuItemType.snack,
    },
    {
      'name': 'Appetizers',
      'image': 'assets/food.png',
      'type': MenuItemType.appetizer,
    },
    {
      'name': 'Sweets',
      'image': 'assets/food.png',
      'type': MenuItemType.sweet,
    },
    {
      'name': 'Beverages',
      'image': 'assets/food.png',
      'type': MenuItemType.beverage,
    },
    {
      'name': 'Deals',
      'image': 'assets/food.png',
      'type': MenuItemType.deal,
    },
    {
      'name': 'Limited Time Only',
      'image': 'assets/food.png',
      'type': MenuItemType.limitedTimeOnly,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Menu')),
      body: ListView.separated(
        padding: const EdgeInsets.only(top: 20),
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Image.asset(_a[index]['image']),
            title: Text(
              _a[index]['name'],
              style: Theme.of(context).textTheme.subtitle1,
            ),
            trailing: const Icon(Icons.navigate_next_rounded),
            onTap: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                    builder: (BuildContext context) =>
                        MenuCategoryPage(_a[index]['type'])),
              );
            },
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const Divider();
        },
        itemCount: _a.length,
      ),
      bottomNavigationBar: const MyBottomBar(MyBottomBar.MENU),
    );
  }
}

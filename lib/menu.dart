import 'package:flutter/material.dart';
import 'package:lwd_food_ordering_app/common.dart';
import 'package:lwd_food_ordering_app/menu_category.dart';
import 'package:lwd_food_ordering_app/menu_types.dart';

class MenuPage extends StatefulWidget {
  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  final List<MenuItemType> _categories = const [
    MenuItemType.mainDish,
    MenuItemType.sideDish,
    MenuItemType.snack,
    MenuItemType.appetizer,
    MenuItemType.sweet,
    MenuItemType.beverage,
    MenuItemType.deal,
    MenuItemType.limitedTimeOnly,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Menu')),
      body: ListView.separated(
        padding: const EdgeInsets.only(top: 20),
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Image.asset(_categories[index].image),
            title: Text(
              _categories[index].name,
              style: Theme.of(context).textTheme.subtitle1,
            ),
            trailing: const Icon(Icons.navigate_next_rounded),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (_) => MenuCategoryPage(_categories[index])),
              );
            },
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const Divider();
        },
        itemCount: _categories.length,
      ),
      bottomNavigationBar: const MyBottomBar(MyBottomBar.MENU),
    );
  }
}

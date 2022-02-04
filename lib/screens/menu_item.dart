import 'package:flutter/material.dart';
import 'package:lwd_food_ordering_app/common.dart';

class MenuItemScreen extends StatefulWidget {
  final MenuItemData _menuItem;

  MenuItemScreen(MenuItemType menuItemType, int menuItemIndex, {Key? key})
      : _menuItem = menuItems[menuItemType]![menuItemIndex],
        super(key: key);

  @override
  _MenuItemScreenState createState() => _MenuItemScreenState(_menuItem);
}

class _MenuItemScreenState extends State<MenuItemScreen> {
  final MenuItemData _menuItem;

  _MenuItemScreenState(this._menuItem) : super();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_menuItem.name)),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text(_menuItem.priceCalories()),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Center(child: Image.asset(_menuItem.image)),
              ),
              Text(_menuItem.description),
            ],
          ),
        ),
      ),
      bottomSheet: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
            child: const Text('Add to Cart'),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

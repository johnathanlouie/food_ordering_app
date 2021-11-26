import 'package:flutter/material.dart';

enum MenuItemType {
  mainDish,
  sideDish,
  snack,
  appetizer,
  sweet,
  beverage,
  deal,
  limitedTimeOnly,
}

class MenuItem extends StatefulWidget {
  const MenuItem({Key? key}) : super(key: key);

  @override
  _MenuItemState createState() => _MenuItemState();
}

class _MenuItemState extends State<MenuItem> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

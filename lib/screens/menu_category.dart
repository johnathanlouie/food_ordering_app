import 'package:flutter/material.dart';
import 'package:lwd_food_ordering_app/menu_types.dart';
import 'package:lwd_food_ordering_app/screens.dart';

class MenuCategoryScreen extends StatelessWidget {
  final MenuItemType menuItemType;

  const MenuCategoryScreen(this.menuItemType, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(menuItemType.name)),
      body: ListView.builder(
        itemBuilder: (context, index) => ListTile(
          leading: Image.asset(menuItems[menuItemType]![index].image),
          title: Text(menuItems[menuItemType]![index].name),
          subtitle: Text(menuItems[menuItemType]![index].priceCalories()),
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (_) => MenuItemScreen(menuItemType, index),
            ));
          },
        ),
        itemCount: menuItems[menuItemType]!.length,
      ),
    );
  }
}

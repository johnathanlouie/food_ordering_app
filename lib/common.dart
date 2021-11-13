import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'account.dart';
import 'home.dart';
import 'menu.dart';
import 'pay.dart';
import 'rewards.dart';

BottomNavigationBar myBottomBar(BuildContext context,
    {required int currentIndex}) {
  return BottomNavigationBar(
    currentIndex: currentIndex,
    items: <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: IconButton(
          icon: Icon(Icons.home),
          onPressed: () {
            if (currentIndex != 0) {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (BuildContext context) {
                  return MyHomePage();
                }),
              );
            }
          },
        ),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        icon: IconButton(
          icon: Icon(Icons.menu_book),
          onPressed: () {
            if (currentIndex != 1) {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (BuildContext context) {
                  return MenuPage();
                }),
              );
            }
          },
        ),
        label: 'Menu',
      ),
      BottomNavigationBarItem(
        icon: IconButton(
          icon: Icon(Icons.credit_card),
          onPressed: () {
            if (currentIndex != 2) {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (BuildContext context) {
                  return PayPage();
                }),
              );
            }
          },
        ),
        label: 'Pay',
      ),
      BottomNavigationBarItem(
        icon: IconButton(
          icon: Icon(Icons.star),
          onPressed: () {
            if (currentIndex != 3) {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (BuildContext context) {
                  return RewardsPage();
                }),
              );
            }
          },
        ),
        label: 'Rewards',
      ),
      BottomNavigationBarItem(
        icon: IconButton(
          icon: Icon(Icons.account_box),
          onPressed: () {
            if (currentIndex != 4) {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (BuildContext context) {
                  return AccountPage();
                }),
              );
            }
          },
        ),
        label: 'Account',
      ),
    ],
    type: BottomNavigationBarType.fixed,
  );
}

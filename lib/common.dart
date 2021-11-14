import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lwd_food_ordering_app/account.dart';
import 'package:lwd_food_ordering_app/home.dart';
import 'package:lwd_food_ordering_app/menu.dart';
import 'package:lwd_food_ordering_app/pay.dart';
import 'package:lwd_food_ordering_app/rewards.dart';

class MyBottomBar extends StatelessWidget {
  static const int HOME = 0;
  static const int MENU = 1;
  static const int PAY = 2;
  static const int REWARDS = 3;
  static const int ACCOUNT = 4;
  final int currentIndex;

  const MyBottomBar(this.currentIndex, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              if (currentIndex != HOME) {
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
              if (currentIndex != MENU) {
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
              if (currentIndex != PAY) {
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
              if (currentIndex != REWARDS) {
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
              if (currentIndex != ACCOUNT) {
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
}

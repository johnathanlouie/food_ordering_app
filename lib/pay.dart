import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lwd_food_ordering_app/common.dart';

class PayPage extends StatefulWidget {
  @override
  _PayPageState createState() => _PayPageState();
}

class _PayPageState extends State<PayPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      bottomNavigationBar: MyBottomBar(currentIndex: 2),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:lwd_food_ordering_app/common.dart';

class PayScreen extends StatefulWidget {
  @override
  _PayScreenState createState() => _PayScreenState();
}

class _PayScreenState extends State<PayScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      bottomNavigationBar: const MyBottomBar(MyBottomBar.PAY),
    );
  }
}

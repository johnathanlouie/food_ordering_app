import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoadingPage extends StatelessWidget {
  final String title;

  const LoadingPage({this.title = '', Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
        title,
        style: TextStyle(
          color: Colors.pink,
          fontSize: 48,
        ),
      )),
    );
  }
}
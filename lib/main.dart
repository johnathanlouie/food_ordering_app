import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'login.dart';

void main() {
  Firebase.initializeApp().then((FirebaseApp app) => runApp(MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Ordering App',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: LoginPage(),
    );
  }
}

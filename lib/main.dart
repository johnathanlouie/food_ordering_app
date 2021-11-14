import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home.dart';
import 'loading.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initialization,
      builder: (context, snapshot) {
        Widget w;
        if (snapshot.hasError) {
          w = LoadingPage(title: 'Error!');
        } else if (snapshot.connectionState == ConnectionState.done) {
          w = MyHomePage();
        } else {
          w = LoadingPage(title: 'Loading....');
        }
        return MaterialApp(
          title: 'Food Ordering App',
          theme: ThemeData(primarySwatch: Colors.deepPurple),
          home: w,
        );
      },
    );
  }
}

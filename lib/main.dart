import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'loading.dart';
import 'login.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(App());
}

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initialization,
      builder: (context, snapshot) {
        Widget w;
        if (snapshot.hasError) {
          w = LoadingPage(title: 'Error');
        } else if (snapshot.connectionState == ConnectionState.done) {
          w = LoginPage();
        } else {
          w = LoadingPage(title: 'Loading');
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

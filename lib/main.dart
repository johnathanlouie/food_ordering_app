import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:lwd_food_ordering_app/screens/home.dart';
import 'package:lwd_food_ordering_app/screens/loading.dart';
import 'package:lwd_food_ordering_app/user.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(ChangeNotifierProvider(
    create: (context) => User(),
    child: MyApp(),
  ));
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
          w = const LoadingPage(title: 'Error!');
        } else if (snapshot.connectionState == ConnectionState.done) {
          w = MyHomePage();
        } else {
          w = const LoadingPage(title: 'Loading....');
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

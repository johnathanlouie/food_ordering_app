import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lwd_food_ordering_app/common.dart';
import 'package:lwd_food_ordering_app/home.dart';
import 'package:lwd_food_ordering_app/login.dart';
import 'package:lwd_food_ordering_app/signup.dart';

class AccountPage extends StatefulWidget {
  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Account')),
      bottomNavigationBar: myBottomBar(
        context,
        currentIndex: 4,
      ),
      body: Column(
        children: <Widget>[
          Visibility(
            visible: FirebaseAuth.instance.currentUser == null,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => SignUpPage(),
                        ));
                      },
                      child: Text('Sign Up'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: OutlinedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ));
                      },
                      child: Text('Log In'),
                    ),
                  ),
                ],
              ),
            ),
            replacement: ListTile(
              title: Text(
                'FirstName LastName',
                style: Theme.of(context).textTheme.headline5,
              ),
              subtitle: Text(FirebaseAuth.instance.currentUser?.email ?? ''),
            ),
          ),
          ListTile(
            title: Text('Personal Info'),
            trailing: Icon(Icons.navigate_next_rounded),
            onTap: () {},
          ),
          ListTile(
            title: Text('Payment Options'),
            trailing: Icon(Icons.navigate_next_rounded),
            onTap: () {},
          ),
          ListTile(
            title: Text('Transaction History'),
            trailing: Icon(Icons.navigate_next_rounded),
            onTap: () {},
          ),
          Visibility(
            visible: FirebaseAuth.instance.currentUser != null,
            child: ElevatedButton(
              onPressed: () async {
                try {
                  await FirebaseAuth.instance.signOut();
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (BuildContext context) => MyHomePage(),
                  ));
                } catch (e) {
                  print("Sign out error: $e"); // TODO add error handling
                }
              },
              child: Text('Log Out'),
            ),
          ),
        ],
      ),
    );
  }
}

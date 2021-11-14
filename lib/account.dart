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
      appBar: AppBar(title: const Text('Account')),
      bottomNavigationBar: const MyBottomBar(MyBottomBar.ACCOUNT),
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
                      child: const Text('Sign Up'),
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
                      child: const Text('Log In'),
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
            title: const Text('Personal Info'),
            trailing: const Icon(Icons.navigate_next_rounded),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Payment Options'),
            trailing: const Icon(Icons.navigate_next_rounded),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Transaction History'),
            trailing: const Icon(Icons.navigate_next_rounded),
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
              child: const Text('Log Out'),
            ),
          ),
        ],
      ),
    );
  }
}

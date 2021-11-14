import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'common.dart';
import 'home.dart';

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
          ListTile(
            title: Text(
              'FirstName LastName',
              style: Theme.of(context).textTheme.headline5,
            ),
            subtitle: Text('fake@email.com'),
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
          ElevatedButton(
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
            child: Text('Sign Out'),
          ),
        ],
      ),
    );
  }
}

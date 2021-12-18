import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:lwd_food_ordering_app/home.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login Screen')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(hintText: 'Email address'),
                enableSuggestions: false,
                autocorrect: false,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Enter your email address.';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _passwordController,
                decoration: const InputDecoration(hintText: 'Password'),
                obscureText: true,
                enableSuggestions: false,
                autocorrect: false,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Enter your password.';
                  }
                  return null;
                },
              ),
              ElevatedButton(
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: const Text('Logging in....')),
                    );
                    try {
                      UserCredential credentials = await FirebaseAuth.instance
                          .signInWithEmailAndPassword(
                        email: _emailController.text,
                        password: _passwordController.text,
                      );
                      DataSnapshot userInfo = await FirebaseDatabase.instance
                          .ref(
                              "users/${FirebaseAuth.instance.currentUser!.uid}")
                          .get();
                      String firstName =
                          userInfo.child('firstName').value as String;
                      String lastName =
                          userInfo.child('lastName').value as String;
                      SharedPreferences prefs =
                          await SharedPreferences.getInstance();
                      await prefs.setString('firstName', firstName);
                      await prefs.setString('lastName', lastName);
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                            builder: (BuildContext context) => MyHomePage()),
                      );
                    } catch (error) {
                      // TODO add real error handling
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                            content: const Text('Error logging in.')),
                      );
                    }
                  }
                },
                child: const Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}

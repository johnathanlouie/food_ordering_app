import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:lwd_food_ordering_app/screens.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final GlobalKey<FormState> _signUpKey = GlobalKey<FormState>();
  final TextEditingController _firstName = TextEditingController();
  final TextEditingController _lastName = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  bool _isToSAccepted = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sign Up')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _signUpKey,
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Personal Info',
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
              const Divider(
                thickness: 2.0,
                color: Colors.deepPurple,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: _firstName,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Enter your first name.';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    border: const OutlineInputBorder(),
                    hintText: 'First Name',
                  ),
                  autofocus: true,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: _lastName,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Enter your last name.';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    border: const OutlineInputBorder(),
                    hintText: 'Last Name',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Security',
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
              const Divider(
                thickness: 2.0,
                color: Colors.deepPurple,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: _email,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Enter your email.';
                    }
                    return null;
                  },
                  autocorrect: false,
                  decoration: const InputDecoration(
                    border: const OutlineInputBorder(),
                    hintText: 'Email',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: _password,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Enter your password.';
                    }
                    return null;
                  },
                  autocorrect: false,
                  obscureText: true,
                  enableSuggestions: false,
                  decoration: const InputDecoration(
                    border: const OutlineInputBorder(),
                    hintText: 'Password',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Terms',
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
              const Divider(
                thickness: 2.0,
                color: Colors.deepPurple,
              ),
              CheckboxListTile(
                value: _isToSAccepted,
                onChanged: (isChecked) {
                  setState(() {
                    _isToSAccepted = isChecked!;
                  });
                },
                title: const Text('I accept the Terms of Use.'),
                subtitle: const Text(
                    'By joining, I agree to Restaurant Rewards Terms, Restaurant Card Terms, and the Application Terms.'),
                controlAffinity: ListTileControlAffinity.leading,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () async {
                    if (_isToSAccepted) {
                      if (_signUpKey.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: const Text('Registering the user....'),
                          ),
                        );
                        try {
                          await FirebaseAuth.instance
                              .createUserWithEmailAndPassword(
                            email: _email.text,
                            password: _password.text,
                          );
                          await FirebaseDatabase.instance
                              .ref()
                              .child(
                                  "users/${FirebaseAuth.instance.currentUser!.uid}")
                              .set({
                            'firstName': _firstName.text,
                            'lastName': _lastName.text,
                          });
                          SharedPreferences prefs =
                              await SharedPreferences.getInstance();
                          await prefs.setString('firstName', _firstName.text);
                          await prefs.setString('lastName', _lastName.text);
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                                builder: (context) => HomeScreen()),
                          );
                        } catch (e) {
                          // TODO add real error handling
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content:
                                  const Text('Error registering new user.'),
                            ),
                          );
                          print(e);
                        }
                      }
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: const Text('Accept the Terms of Use.'),
                        ),
                      );
                    }
                  },
                  child: const Text('Join Now'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

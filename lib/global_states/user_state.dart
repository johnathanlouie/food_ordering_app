import 'package:flutter/widgets.dart';

class UserState extends ChangeNotifier {
  String _firstName = '';
  String _lastName = '';
  bool _loggedIn = false;

  void login(String firstName, String lastName) {
    _firstName = firstName;
    _lastName = lastName;
    _loggedIn = true;
    notifyListeners();
  }

  void logout() {
    _loggedIn = false;
    notifyListeners();
  }

  String get firstName {
    if (_loggedIn) {
      return _firstName;
    }
    return 'Guest';
  }

  String get lastName {
    if (_loggedIn) {
      return _lastName;
    }
    return 'Guest';
  }
}

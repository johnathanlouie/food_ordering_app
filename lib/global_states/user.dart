import 'package:flutter/widgets.dart';

class User extends ChangeNotifier {
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
    return '';
  }

  String get lastName {
    if (_loggedIn) {
      return _lastName;
    }
    return 'Guest';
  }
}

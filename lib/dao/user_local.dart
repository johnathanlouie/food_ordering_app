import 'package:firebase_auth/firebase_auth.dart';
import 'package:lwd_food_ordering_app/common.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserLocal {
  static Future<UserData> getName() async {
    if (FirebaseAuth.instance.currentUser == null) {
      throw NotLoggedInException();
    }
    SharedPreferences pref = await SharedPreferences.getInstance();
    String? userID = pref.getString('userID');
    if (FirebaseAuth.instance.currentUser!.uid == userID) {
      throw UserDataNotSyncedException();
    }
    return UserData(
      userID: userID,
      firstName: pref.getString('firstName'),
      lastName: pref.getString('lastName'),
    );
  }

  static Future<void> set() async {
    if (FirebaseAuth.instance.currentUser == null) {
      throw NotLoggedInException();
    }
    SharedPreferences pref = await SharedPreferences.getInstance();
  }

  static Future<void> setFirstName(String firstName) async {
    (await SharedPreferences.getInstance()).setString('firstName', firstName);
  }

  static Future<void> setLastName(String lastName) async {
    (await SharedPreferences.getInstance()).setString('lastName', lastName);
  }

  static Future<void> setUserID() async {
    (await SharedPreferences.getInstance())
        .setString('userID', FirebaseAuth.instance.currentUser!.uid);
  }

  static Future<void> removeFirstName() async {
    await (await SharedPreferences.getInstance()).remove('firstName');
  }

  static Future<void> removeLastName() async {
    await (await SharedPreferences.getInstance()).remove('lastName');
  }

  static Future<void> removeUserID() async {
    await (await SharedPreferences.getInstance()).remove('userID');
  }
}

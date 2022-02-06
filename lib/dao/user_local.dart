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

  static Future<void> setName(
      {required String first, required String last}) async {
    if (FirebaseAuth.instance.currentUser == null) {
      throw NotLoggedInException();
    }
    SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.setString('firstName', first);
    await pref.setString('lastName', last);
    await pref.setString('userID', FirebaseAuth.instance.currentUser!.uid);
  }

  static Future<void> removeName() async {
    if (FirebaseAuth.instance.currentUser == null) {
      throw NotLoggedInException();
    }
    SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.remove('firstName');
    await pref.remove('lastName');
    await pref.remove('userID');
  }
}

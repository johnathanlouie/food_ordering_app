import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:lwd_food_ordering_app/common.dart';

class UserDao {
  static Future<UserData> getName() async {
    if (FirebaseAuth.instance.currentUser == null) {
      throw NotLoggedInException();
    }
    DataSnapshot snap = (await FirebaseDatabase.instance
        .ref("users/${FirebaseAuth.instance.currentUser!.uid}")
        .get());
    return UserData(
      userID: FirebaseAuth.instance.currentUser!.uid,
      firstName: snap.child('firstName').value as String,
      lastName: snap.child('lastName').value as String,
    );
  }

  static Future<void> setName({
    required String first,
    required String last,
  }) async {
    if (FirebaseAuth.instance.currentUser == null) {
      throw NotLoggedInException();
    }
    await FirebaseDatabase.instance
        .ref()
        .child("users/${FirebaseAuth.instance.currentUser!.uid}")
        .set({
      'firstName': first,
      'lastName': last,
    });
  }
}

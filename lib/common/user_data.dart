class UserData {
  String? firstName;
  String? lastName;
  String? userID;

  UserData({
    required this.userID,
    required this.firstName,
    required this.lastName,
  });

  bool isComplete() => firstName != null && lastName != null && userID != null;
}

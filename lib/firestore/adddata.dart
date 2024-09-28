import 'package:cloud_firestore/cloud_firestore.dart';

class UserService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Future<void> addUserDetails(String userId, String name, String email, String number) async {
    try {
      await _db.collection('users').doc(userId).set({
        'name': name,
        'email': email,
        'profileImageUrl': number,
      });
      print("User details added successfully!");
    } catch (e) {
      print("Error adding user details: $e");
    }
  }
}

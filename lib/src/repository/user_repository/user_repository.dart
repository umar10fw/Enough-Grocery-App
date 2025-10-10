import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:egrocery/src/features/authentication/model/user_model/user_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserRepository extends GetxController {
  static UserRepository get instance => Get.find();

  final _db = FirebaseFirestore.instance;

  /// ✅ Create a new user in Firestore
  Future<void> createUser(UserModel user) async {
    try {
      // Using `set` with doc(user.id)` is safer than add()
      await _db.collection("Users").doc(user.id).set(user.toJson());
      Get.snackbar(
        "Success",
        "Your account has been created successfully",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.greenAccent.withOpacity(0.1),
        colorText: Colors.green,
      );
    } catch (e) {
      Get.snackbar(
        "Error",
        "Something went wrong. Please try again.\n$e",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.redAccent.withOpacity(0.1),
        colorText: Colors.red,
      );
    }
  }

  /// ✅ Fetch user details by email
  Future<UserModel?> getUserDetails(String email) async {
    try {
      final snapshot = await _db
          .collection("Users")
          .where("Email", isEqualTo: email)
          .limit(1)
          .get();

      if (snapshot.docs.isNotEmpty) {
        return UserModel.fromSnapshot(snapshot.docs.first);
      } else {
        debugPrint("No user found for email: $email");
        return null;
      }
    } catch (e) {
      debugPrint("Error fetching user details: $e");
      return null;
    }
  }

  /// ✅ Fetch all users (for admin usage)
  Future<List<UserModel>> allUserDetails() async {
    try {
      final snapshot = await _db.collection("Users").get();
      return snapshot.docs.map((e) => UserModel.fromSnapshot(e)).toList();
    } catch (e) {
      debugPrint("Error fetching all users: $e");
      return [];
    }
  }

  /// ✅ Update user data
  Future<void> updateUserRecord(UserModel user) async {
    try {
      await _db.collection("Users").doc(user.id).update(user.toJson());
      Get.snackbar(
        "Updated",
        "User data updated successfully",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.blueAccent.withOpacity(0.1),
        colorText: Colors.blue,
      );
    } catch (e) {
      Get.snackbar(
        "Error",
        "Failed to update user record.\n$e",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.redAccent.withOpacity(0.1),
        colorText: Colors.red,
      );
    }
  }
}

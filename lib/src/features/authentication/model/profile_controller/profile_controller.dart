import 'package:egrocery/src/features/authentication/model/user_model/user_model.dart';
import 'package:egrocery/src/repository/user_repository/user_repository.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class ProfileController extends GetxController {
  static ProfileController get instance => Get.find();

  // Observables
  Rx<UserModel> user = UserModel(
    id: '',
    email: '',
    fullName: '',
    phoneNo: '',
    password: '',
  ).obs;

  final _userRepo = Get.put(UserRepository());

  /// Fetch current user details by email
  Future<void> fetchUserDetails(String email) async {
    try {
      final userData = await _userRepo.getUserDetails(email);
      if (userData != null) {
        user.value = userData;
      } else {
        Get.snackbar(
          "Not Found",
          "No user found with this email",
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.orangeAccent.withOpacity(0.1),
          colorText: Colors.orange,
        );
      }
    } catch (e) {
      Get.snackbar(
        "Error",
        "Failed to load profile details.\n$e",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.redAccent.withOpacity(0.1),
        colorText: Colors.red,
      );
    }
  }

  /// Update user profile
  Future<void> updateUserProfile(UserModel updatedUser) async {
    try {
      await _userRepo.updateUserRecord(updatedUser);
      user.value = updatedUser;
      Get.snackbar(
        "Success",
        "Profile updated successfully",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.greenAccent.withOpacity(0.1),
        colorText: Colors.green,
      );
    } catch (e) {
      Get.snackbar(
        "Error",
        "Failed to update profile.\n$e",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.redAccent.withOpacity(0.1),
        colorText: Colors.red,
      );
    }
  }

  // Fetch current user details (you can pass email from FirebaseAuth)
  Future<UserModel?> getUserDetails(String email) async {
    return await _userRepo.getUserDetails(email);
  }

  // Update user record
  Future<void> updateUserRecord(UserModel user) async {
    await _userRepo.updateUserRecord(user);
  }
}

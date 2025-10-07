// import 'package:egrocery/src/repository/auth_repository/Authentication_Repository.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:get/get.dart';
//
// class SignupController extends GetxController {
//   static SignupController get instance => Get.find();
//
//   final email = TextEditingController();
//   final password = TextEditingController();
//   final confirmPassword = TextEditingController();
//   final fullName = TextEditingController();
//   final phoneNo = TextEditingController();
//
//   void registerUser(String email, String password) {
//     AuthenticationRepository.instance
//         .createUserWithEmailAndPassword(email, password);
//   }
// }
// import 'package:egrocery/src/repository/auth_repository/Authentication_Repository.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:get/get.dart';
//
// class SignupController extends GetxController {
//   static SignupController get instance => Get.find();
//
//   // ✅ Correct: Define them as TextEditingController
//   final emailController = TextEditingController();
//   final passwordController = TextEditingController();
//   final confirmPasswordController = TextEditingController();
//   final fullNameController = TextEditingController();
//   final phoneNoController = TextEditingController();
//
//   /// ✅ Signup Function
//   void registerUser() {
//     final email = emailController.text;
//     final password = passwordController.text;
//     final confirmPassword = confirmPasswordController.text;
//     final fullName = fullNameController.text;
//     final phone = phoneNoController.text;
//
//     // Validation
//     if (email.isEmpty ||
//         password.isEmpty ||
//         confirmPassword.isEmpty ||
//         fullName.isEmpty ||
//         phone.isEmpty) {
//       Get.snackbar('Error', 'All fields are required',
//           snackPosition: SnackPosition.BOTTOM);
//       return;
//     }
//
//     if (password != confirmPassword) {
//       Get.snackbar('Error', 'Passwords do not match',
//           snackPosition: SnackPosition.BOTTOM);
//       return;
//     }
//
//     // ✅ Call repository method
//     AuthenticationRepository.instance
//         .createUserWithEmailAndPassword(email, password);
//   }
//
//   @override
//   void onClose() {
//     // Dispose controllers
//     emailController.dispose();
//     passwordController.dispose();
//     confirmPasswordController.dispose();
//     fullNameController.dispose();
//     phoneNoController.dispose();
//     super.onClose();
//   }
// }
import 'package:egrocery/src/repository/auth_repository/Authentication_Repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  final email = TextEditingController();
  final password = TextEditingController();
  final confirmPassword = TextEditingController();
  final fullName = TextEditingController();
  final phoneNo = TextEditingController();

  void registerUser() async {
    final userEmail = email.text.trim();
    final userPassword = password.text.trim();

    if (userEmail.isEmpty || userPassword.isEmpty) {
      Get.snackbar("Error", "Email and password cannot be empty");
      return;
    }

    try {
      await AuthenticationRepository.instance
          .createUserWithEmailAndPassword(userEmail, userPassword);
    } catch (e) {
      print("Signup failed: $e");
      Get.snackbar("Error", e.toString());
    }
  }
}


import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:egrocery/src/features/authentication/model/user_model/user_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserRepository extends GetxController{
  static UserRepository get instance => Get.find();

  final _db = FirebaseFirestore.instance;

  Future<void> createUser(UserModel user) async {
    await _db.collection("Users").add(user.toJson()).whenComplete(
        ()=> Get.snackbar("Success", "Your account has been created",
            snackPosition:SnackPosition.BOTTOM,
            backgroundColor: Colors.greenAccent.withOpacity(0.1),
            colorText: Colors.green)
    ).catchError((error, stackTrace){
      Get.snackbar("Error", "Some thing went wrong, please try again",
          snackPosition:SnackPosition.BOTTOM,
          backgroundColor: Colors.greenAccent.withOpacity(0.1),
          colorText: Colors.green);
    });
  }

}
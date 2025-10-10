import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  final String? id;
  final String email;
  final String fullName;
  final String phoneNo;
  final String password;

  UserModel({
    this.id,
    required this.email,
    required this.fullName,
    required this.phoneNo,
    required this.password,
  });

  Map<String, dynamic> toJson() => {
    "id": id,
    "Email": email,
    "FullName": fullName,
    "PhoneNo": phoneNo,
    "Password": password,
  };

  factory UserModel.fromSnapshot(DocumentSnapshot<Map<String, dynamic>> doc) {
    final data = doc.data()!;
    return UserModel(
      id: doc.id,
      email: data["Email"],
      fullName: data["FullName"],
      phoneNo: data["PhoneNo"],
      password: data["Password"],
    );
  }
}

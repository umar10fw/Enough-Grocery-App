import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../constants/app_style/color.dart';
import '../../../constants/app_style/font.dart';

class UpdateProfileScreen extends StatelessWidget {
  const UpdateProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Edit Profile', style: TextStyle(color: Colors.black)),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              SizedBox(
                height: 5.h,
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  const CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/images/bgimg.jpg'),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 10,
                    child: Container(
                      height: 32,
                      width: 32,
                      decoration: BoxDecoration(
                        color: Colors.yellow,
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white, width: 2),
                      ),
                      child: IconButton(
                        padding: EdgeInsets.zero,
                        icon: const Icon(Icons.camera, size: 18, color: Colors.black),
                        onPressed: () {
                          // Handle profile image change
                        },
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5.h,
              ),
              Form(
                child: Column(
                  children: [
                    // USERNAME FIELD
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 15, right: 5),
                            child: Icon(Icons.person,
                                color: EColor.grey, size: 25),
                          ),
                          Expanded(
                            flex: 1,
                            child: SizedBox(
                              height: 40,
                              child: Padding(
                                padding:
                                EdgeInsets.only(left: 5.0, right: 5.0),
                                child: TextFormField(
                                  // controller: controller.fullName,
                                  decoration: InputDecoration(
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide:
                                      BorderSide(color: EColor.cGreen),
                                    ),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide:
                                      BorderSide(color: Colors.grey),
                                    ),
                                    hintText: "User Name",
                                    hintStyle: fRagular.copyWith(
                                      fontSize: 13,
                                      color: EColor.grey,
                                    ),
                                  ),
                                  // validator: (value) {
                                  //   if (value == null || value.isEmpty) {
                                  //     return 'Please enter username';
                                  //   }
                                  //   return null;
                                  // },
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 2.h),
                    // EMAIL FIELD
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 15, right: 5),
                            child: Icon(Icons.email,
                                color: EColor.grey, size: 25),
                          ),
                          Expanded(
                            flex: 1,
                            child: SizedBox(
                              height: 40,
                              child: Padding(
                                padding:
                                EdgeInsets.only(left: 5.0, right: 5.0),
                                child: TextFormField(
                                  // controller: controller.email,
                                  decoration: InputDecoration(
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide:
                                      BorderSide(color: EColor.cGreen),
                                    ),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide:
                                      BorderSide(color: Colors.grey),
                                    ),
                                    hintText: "Email",
                                    hintStyle: fRagular.copyWith(
                                      fontSize: 13,
                                      color: EColor.grey,
                                    ),
                                  ),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter email';
                                    }
                                    if (!value.contains('@')) {
                                      return 'Enter a valid email';
                                    }
                                    return null;
                                  },
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 2.h),
                    // PHONE NUMBER
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 15, right: 5),
                            child: Icon(Icons.phone_android,
                                color: EColor.grey, size: 25),
                          ),
                          Expanded(
                            flex: 1,
                            child: SizedBox(
                              height: 40,
                              child: Padding(
                                padding:
                                EdgeInsets.only(left: 5.0, right: 5.0),
                                child: TextFormField(
                                  // controller: controller.phoneNo,
                                  decoration: InputDecoration(
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide:
                                      BorderSide(color: EColor.cGreen),
                                    ),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide:
                                      BorderSide(color: Colors.grey),
                                    ),
                                    hintText: "Phone",
                                    hintStyle: fRagular.copyWith(
                                      fontSize: 13,
                                      color: EColor.grey,
                                    ),
                                  ),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter phone';
                                    }
                                    if (!value.contains('')) {
                                      return 'Enter a valid phone number';
                                    }
                                    return null;
                                  },
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 2.h),
                    // PASSWORD FIELD
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 15, right: 5),
                            child: Icon(Icons.lock_outline,
                                color: EColor.grey, size: 25),
                          ),
                          Expanded(
                            flex: 1,
                            child: SizedBox(
                              height: 40,
                              child: Padding(
                                padding:
                                EdgeInsets.only(left: 5.0, right: 5.0),
                                child: TextFormField(
                                  // controller: controller.password,
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide:
                                      BorderSide(color: EColor.cGreen),
                                    ),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide:
                                      BorderSide(color: Colors.grey),
                                    ),
                                    suffixIcon: Icon(
                                      Icons.visibility_off_outlined,
                                      color: EColor.grey,
                                      size: 17,
                                    ),
                                    hintText: "Password",
                                    hintStyle: fRagular.copyWith(
                                      fontSize: 13,
                                      color: EColor.grey,
                                    ),
                                  ),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter password';
                                    }
                                    if (value.length < 6) {
                                      return 'Password must be at least 6 characters';
                                    }
                                    return null;
                                  },
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 2.h),
                    SizedBox(
                      height: 5.h,
                    ),
                    // 🟡 Edit Profile Button
                    Padding(
                      padding: const EdgeInsets.all(19),
                      child: SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            // Handle edit profile
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.yellow,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            padding:
                            const EdgeInsets.symmetric(horizontal: 40, vertical: 14),
                            elevation: 0,
                          ),
                          child: const Text(
                            "Edit Profile",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    // 🧾 Joined Date + Delete Button Row
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 2.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Joined 31 October 2022",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              // Handle delete action
                            },
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.red.withOpacity(0.1),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              padding:
                              const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
                            ),
                            child: const Text(
                              "Delete",
                              style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

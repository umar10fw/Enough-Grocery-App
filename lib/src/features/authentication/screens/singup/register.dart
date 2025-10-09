import 'package:egrocery/src/features/authentication/model/user_model/user_model.dart';
import 'package:egrocery/src/features/dashboard/screen/homepage/homeScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import '../../../../common_widget/btn3.dart';
import '../../../../constants/app_style/color.dart';
import '../../../../constants/app_style/font.dart';
import '../../controller/signup_controller/signup_controller.dart';
import '../login/LoginScreen.dart';
import '../otp_verified/otppassword.dart';
class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignupController());
    final _formKey = GlobalKey<FormState>();

    return Sizer(builder: (context, orientation, deviceType) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: EColor.primary,
          centerTitle: true,
          elevation: 0,
          title: Text(
            "Sign Up",
            style: fBold.copyWith(color: EColor.cWhite),
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                /// HEADER
                Center(
                  child: Container(
                    padding: EdgeInsets.only(top: 2.h),
                    child: Column(
                      children: [
                        Image.asset('assets/images/bage.png', height: 15.h),
                        SizedBox(height: 1.h),
                        Text(
                          'Enough Grocery',
                          style: fBold.copyWith(
                            fontSize: 17,
                            color: EColor.primary,
                          ),
                        ),
                        SizedBox(height: 1.h),
                        Text(
                          'A Place for Your grocery',
                          style: fRagular.copyWith(
                            fontSize: 13,
                            color: EColor.cBlack,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 2.h),
                Padding(
                  padding: EdgeInsets.only(right: 32.h),
                  child: Text(
                    'Sign Up',
                    style: fBold.copyWith(fontSize: 20),
                  ),
                ),
                SizedBox(height: 2.h),

                /// FORM SECTION
                Form(
                  key: _formKey,
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
                                    controller: controller.fullName,
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
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter username';
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
                                    controller: controller.email,
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
                                    controller: controller.phoneNo,
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
                                    controller: controller.password,
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

                      // CONFIRM PASSWORD FIELD
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
                                    controller: controller.confirmPassword,
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
                                      hintText: "Confirm Password",
                                      hintStyle: fRagular.copyWith(
                                        fontSize: 13,
                                        color: EColor.grey,
                                      ),
                                    ),
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please confirm password';
                                      }
                                      if (value != controller.password.text) {
                                        return 'Passwords do not match';
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
                    ],
                  ),
                ),

                SizedBox(height: 4.h),

                /// AGREEMENT TEXT
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                          style: fRagular.copyWith(color: EColor.cBlack),
                          text: "By Signing You're agree to our ",
                        ),
                        TextSpan(
                          style: fRagular.copyWith(color: EColor.primary),
                          text: "Term & Condition",
                        ),
                        TextSpan(
                          style: fRagular.copyWith(color: EColor.cBlack),
                          text: " and ",
                        ),
                        TextSpan(
                          style: fRagular.copyWith(color: EColor.primary),
                          text: "Privacy Policy",
                        ),
                      ]),
                    ),
                  ),
                ),
                SizedBox(height: 5.h),

                /// SIGNUP BUTTON
                InkWell(
                  onTap: () {

                    final user = UserModel(
                        fullName: controller.fullName.text.trim(),
                        email: controller.email.text.trim(),
                        phoneNo: controller.phoneNo.text.trim(),
                        password: controller.password.text.trim());
                    SignupController.instance.createUser(user);


                    // // if (_formKey.currentState!.validate()) {
                    // //   // controller.registerUser();
                    // //   controller.phoneAuthentication(controller.phoneNo.text.trim());
                    // //   Get.to(OtpPassword());
                    // // }
                    // Get.to(HomeScreen());
                  },
                  child: Btn3(
                    text: "Sign Up",
                    color: EColor.primary,
                  ),
                ),
                SizedBox(height: 4.h),

                /// NAVIGATE TO LOGIN
                InkWell(
                  onTap: () {
                    Get.to(LoginScreen());
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('Joined us Before? ', style: fRagular),
                      Text('Login', style: TextStyle(color: EColor.primary)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}

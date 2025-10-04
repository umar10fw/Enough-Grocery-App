import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import '../../../../common_widget/btn2.dart';
import '../../../../constants/app_style/color.dart';

import '../../../../common_widget/btnradius.dart';
import '../../../../constants/app_style/font.dart';
import '../../../../constants/app_style/style.dart';
import '../login/LoginScreen.dart';
import '../forgot/otp.dart';

class GetStart extends StatefulWidget {
  const GetStart({Key? key}) : super(key: key);

  @override
  State<GetStart> createState() => _GetStartState();
}

class _GetStartState extends State<GetStart> {
  @override
  Widget build(BuildContext context) {
    return Sizer(
        builder: (BuildContext context, Orientation orientation, DeviceType deviceType) {
          return const MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Scaffold(
                body: start()
            ),
          );
        });
  }
}

class start extends StatefulWidget {
  const start({Key? key}) : super(key: key);

  @override
  State<start> createState() => _startState();
}

class _startState extends State<start> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: EColor.primary,
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 13.h),
            child: Center(
              child: Column(
                children: [
                  Image.asset('assets/images/groceryIcon.png',height: 18.h,),
                  SizedBox(height: 2.h,),
                  Text('Enough Grocery', style: fSemiBold.copyWith(fontSize: 25,color: EColor.cWhite),)
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: BoxDecoration(
                  color: EColor.cLightWhite,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(kRadius2),
                    topRight: Radius.circular(kRadius2),

                  )
              ),
              height: 48.h,
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.all(7.w),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 2.w, horizontal: 3.w),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text('Welcome',style: fBold.copyWith(fontSize: 20)),
                                SizedBox(width: 2.w,),
                                Image.asset('assets/images/emojy.png',height: 3.h,)
                              ],
                            ),
                            SizedBox(
                              height: 3.h,
                            ),
                            Text('if you are already have an account then enter your email below',
                                style: fRagular.copyWith(fontSize: 13)),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      Btn2(text: "Continue with Email",
                        textcolor: EColor.cWhite,
                        color: EColor.primary,
                        icon: Icons.email,
                        iconcolor: EColor.cWhite,
                        onpress: (){
                          Get.to(LoginScreen());
                          // Get.back();
                        },
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Btn2(text: "Continue with Apple",
                        textcolor: EColor.cWhite,
                        color: EColor.cBlack,
                        icon: Icons.apple,
                        iconcolor: EColor.cWhite,),
                      SizedBox(
                        height: 2.h,
                      ),
                      InkWell(
                        onTap: (){
                          Get.to(OTP());
                          // Get.back();
                        },
                        child: RadiusBtn(text: "Create Account",
                          textcolor: EColor.cBlack,
                          color: Colors.transparent,
                          icon: Icons.person,
                          iconcolor: EColor.cBlack,),
                      ),
                      // CommonButton(
                      //     title: "Sign Up",
                      //     color: EColor.primary,
                      //     textcolor: EColor.cWhite,
                      //     onpress: (){
                      //       Navigator.push(
                      //           context,
                      //           MaterialPageRoute(
                      //               builder: (context) => Welcome()));
                      //     }
                      // ),
                      // CommonButton(
                      //     iconcolor: EColor.cBlack,
                      //     icon: Icons.email_outlined,
                      //     title: "Sign Up with Email",
                      //     color: EColor.cWhite,
                      //     textcolor: EColor.cBlack,
                      //     onpress: (){}),
                      // CommonButton(
                      //     iconcolor: EColor.cWhite,
                      //     icon: Icons.apple_outlined,
                      //     title: "Sign Up with Apple",
                      //     color: EColor.cBlack,
                      //     textcolor: EColor.cWhite,
                      //     onpress: (){}),
                      SizedBox(
                        height: 1.h,
                      ),
                      // InkWell(
                      //   onTap: (){
                      //     Get.to(OTP());
                      //     // Get.back();
                      //   },
                      //     child: Text("OTP")),
                      // InkWell(
                      //   onTap: (){
                      //     Navigator.push(
                      //         context,
                      //         MaterialPageRoute(
                      //         builder: (context) => SignUp()));
                      //   },
                      //   child: Row(
                      //     mainAxisAlignment: MainAxisAlignment.center,
                      //     crossAxisAlignment: CrossAxisAlignment.center,
                      //     children: [
                      //       Text("Don't have an account? ",style: fRagular,),
                      //       Text('Login',style: TextStyle(
                      //           color: EColor.primary
                      //       ),)
                      //     ],
                      //   ),
                      // )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}


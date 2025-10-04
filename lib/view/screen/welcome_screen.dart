import 'package:egrocery/view/screen/signup.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../common_widget/app_style/color.dart';
import '../common_widget/app_style/font.dart';
import '../common_widget/app_style/style.dart';
import '../common_widget/comn_widget/commonButton.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (BuildContext context, Orientation orientation, DeviceType deviceType) {
      return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: WelcomeScreen()
        ),
      );
      });
  }
}

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: EColor.cWhite,
      appBar: AppBar(
        title: Row(
          children: [
            Container(
                height: 6.h,
                margin: EdgeInsets.only(right: 1.w),
                child: Image.asset('assets/images/bage.png',)),

            Text('Grocery',
              style: fSemiBold.copyWith(
                  color: Colors.black,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold
              ),
            ),
          ],
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,),
      body: Stack(
        children: [
          Container(
              margin: EdgeInsets.all(15.h),
              child: Image.asset('assets/images/bage.png',height: 20.h,width: 100.w,)),
          Padding(
            padding: EdgeInsets.only(top: 50.h),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(kRadius),
                  topRight: Radius.circular(kRadius),
                )
              ),
              height: 50.h,
              width: 100.w,
              child: Padding(
                padding: EdgeInsets.all(7.w),
                child: Column(
                  children: [
                    CommonButton(
                        title: "Sign Up",
                        color: EColor.primary,
                        textcolor: EColor.cWhite,
                        onpress: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignUp()));
                        }
                    ),
                    SizedBox(height: 0.5.h,),
                    CommonButton(
                        iconcolor: EColor.cBlack,
                        icon: Icons.email_outlined,
                        title: "Sign Up with Email",
                        color: EColor.cWhite,
                        textcolor: EColor.cBlack,
                        onpress: (){}),
                    SizedBox(height: 0.5.h,),
                    CommonButton(
                        iconcolor: EColor.cWhite,
                        icon: Icons.apple_outlined,
                        title: "Sign Up with Apple",
                        color: EColor.cBlack,
                        textcolor: EColor.cWhite,
                        onpress: (){}),
                    InkWell(
                      onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUp()));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('Already have an account? ',style: fRagular,),
                          Text('Login Here',style: TextStyle(
                            color: EColor.primary
                          ),)
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

import 'package:egrocery/view/screen/verify.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../common_widget/app_style/color.dart';
import '../common_widget/app_style/font.dart';
import '../common_widget/comn_widget/btn4.dart';

class EmailVerify extends StatefulWidget {
  const EmailVerify({Key? key}) : super(key: key);

  @override
  State<EmailVerify> createState() => _EmailVerifyState();
}

class _EmailVerifyState extends State<EmailVerify> {
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: EColor.primary,
          centerTitle: true,
          title: Text("Email verification",style: fBold.copyWith(
              color: EColor.cWhite
          )),
        ),
        backgroundColor: EColor.cWhite,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(
                top: 5.h
            ),
            child: SingleChildScrollView(
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 5.h),
                    child: Column(
                      children: [
                        Image.asset('assets/images/emailverify.png',height: 25.h,),
                        SizedBox(height: 1.h,),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: 3.h
                    ),
                    child: Container(
                      padding: EdgeInsets.only(
                          left: 1.h
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                right: 18.5.h
                            ),
                            child: Text('Verify Your Email',style: fBold.copyWith(
                              fontSize: 20,
                            ),),
                          ),
                          SizedBox(
                            height: 2.h,
                          ),
                          Text("Please enter the 4 digit code send to enoughgrocery@gmail.com",
                            style: fRagular.copyWith(
                                height: 1.5
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 7.h,
                  ),
                  OtpTextField(
                    textStyle: fSemiBold.copyWith(
                      fontSize: 20,
                    ),
                    margin: const EdgeInsets.symmetric(
                        horizontal: 10
                    ),
                    focusedBorderColor: EColor.primary,
                    numberOfFields: 4,
                    borderColor: Color(0xFF08C25E),
                    //set to true to show as box or false to show as dash
                    showFieldAsBox: true,
                    onCodeChanged: (String code) {
                    },
                    onSubmit: (String verificationCode){
                      // showDialog(
                      //     context: context,
                      //     builder: (context){
                      //       return AlertDialog(
                      //         title: Text("Verification Code"),
                      //         content: Text('Code entered is $verificationCode'),
                      //       );
                      //     }
                      // );
                    }, // end onSubmit
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  TextButton(
                      onPressed: (){},
                      child: Text(
                        "Resend OTP",style: fBold.copyWith(
                          color: EColor.primary,
                          fontSize: 17
                      ),
                      )

                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  InkWell(
                    onTap: (){
                      Get.to(Verify());
                      // Get.back();
                    },
                    child: Btn4(
                      text: "Verify",
                      color: EColor.primary,

                    ),
                  )

                ],
              ),
            ),
          ),
        ),
      );
    },
    );
  }
}

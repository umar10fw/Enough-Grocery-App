import 'package:egrocery/src/constants/app_style/font.dart';
import 'package:egrocery/src/features/authentication/screens/forgot/resetpassword.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../../common_widget/btn3.dart';
import '../../../../constants/app_style/color.dart';
import '../otp_verified/emailverify.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: EColor.primary,
          centerTitle: true,
          elevation: 0,
          title: Text("Forgot Password",style: fBold.copyWith(
              color: EColor.cWhite
          )),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Container(
                      padding: EdgeInsets.only(top: 7.h),
                      child: Column(
                        children: [
                          Image.asset('assets/images/otpimg.png',height: 19.h,),
                          SizedBox(height: 1.h,),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 6.h,),
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
                            child: Text('Forgot Password',style: fBold.copyWith(
                              fontSize: 20,
                            ),),
                          ),
                          SizedBox(
                            height: 2.h,
                          ),
                          Text("Don't worry! it happend. Please enter the address associate with your accout",
                          style: fRagular.copyWith(
                            height: 1.5
                          ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 30
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              top: 15,
                              right: 5
                          ),
                          child: Icon(Icons.email,color: EColor.grey,size: 25,),
                        ),
                        Expanded(
                          flex: 1,
                          child: SizedBox(
                            height: 40,
                            child: Padding(
                              padding: EdgeInsets.only(left: 5.0,right: 5.0),
                              child: TextFormField(
                                decoration: InputDecoration(
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: EColor.cGreen),
                                    ),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.grey),
                                    ),
                                    hintText: "Email",
                                    hintStyle: fRagular.copyWith(
                                        fontSize: 13,
                                        color: EColor.grey
                                    )
                                  // labelText: text,
                                  // // hintText: hint,
                                  // labelStyle: TextStyle(
                                  //     fontSize: 12,
                                  //     color: EColor.cGreen
                                  // ),
                                  // // prefixIcon: Icon(
                                  // //   icon,
                                  // //   size: 16,
                                  // //   color: EColor.cGreen,
                                  // // ),
                                ),
                              ),
                              // TextFormField(
                              //   // controller: commentController,
                              //   // validator: (String value){
                              //   //   if(value.isEmpty){
                              //   //     // ignore: missing_return
                              //   //     return 'Comment cannot be blank.';
                              //   //   }
                              //   // },
                              //   decoration: InputDecoration(
                              //       labelText: "Comment",
                              //       labelStyle: TextStyle(
                              //           fontFamily: 'Montserrat',
                              //           fontWeight: FontWeight.bold,
                              //           color: Colors.grey),
                              //       focusedBorder: UnderlineInputBorder(
                              //           borderSide: BorderSide(color: Colors.green))),
                              // ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                      right: 3.h
                    ),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: TextButton(
                        onPressed: (){
                          Get.to(ResetPassword());
                        },
                        child: Text("Forgot Password?",style: fMedium.copyWith(
                          color: EColor.primary,
                        )),
                      ),
                    ),
                  ),
                  SizedBox(height: 15.h,),
                  InkWell(
                    onTap: (){
                      Get.to(EmailVerify());
                    },
                    child: Btn3(
                      text: "Submit",
                      color: EColor.primary,
                    ),
                  ),


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

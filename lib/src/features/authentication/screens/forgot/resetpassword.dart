import 'package:egrocery/src/features/authentication/screens/singup/register.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../../common_widget/btn3.dart';
import '../../../../constants/app_style/color.dart';
import '../../../../constants/app_style/font.dart';
import 'forgotpas.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: EColor.primary,
          centerTitle: true,
          elevation: 0,
          title: Text("Reset Password",style: fBold.copyWith(
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
                          Image.asset('assets/images/passwordimg.png',height: 19.h,),
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
                                right: 19.5.h
                            ),
                            child: Text('Reset Password',style: fBold.copyWith(
                              fontSize: 20,
                            ),),
                          ),

                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 27
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              top: 15,
                              right: 5
                          ),
                          child: Icon(Icons.lock_outline,color: EColor.grey,size: 25,),
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
                                    suffixIcon: Icon(Icons.visibility_off_outlined,
                                      color: EColor.grey,size: 17,),
                                    hintText: "Password",
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
                  SizedBox(
                    height: 2.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 27
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              top: 15,
                              right: 5
                          ),
                          child: Icon(Icons.lock_outline,color: EColor.grey,size: 25,),
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
                                    suffixIcon: Icon(Icons.visibility_off_outlined,
                                      color: EColor.grey,size: 17,),
                                    hintText: "Confirm new Password",
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
                          Get.to(ForgotPassword());
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
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => GetStart()));
                    },
                    child: Btn3(
                      text: "Save",
                      color: EColor.primary,
                    ),
                  ),
                  SizedBox(height: 5.h,),
                  InkWell(
                    onTap: (){
                      Get.to(Register());
                      // Get.back();
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('New to Enough Grocery? ',style: fRagular,),
                        Text('Register',style: TextStyle(
                            color: EColor.primary
                        ),)
                      ],
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

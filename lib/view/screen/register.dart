import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../common_widget/app_style/color.dart';
import '../common_widget/app_style/font.dart';
import '../common_widget/comn_widget/btn3.dart';
import 'LoginScreen.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: EColor.primary,
          centerTitle: true,
          elevation: 0,
          title: Text("Sign Up",style: fBold.copyWith(
              color: EColor.cWhite
          )),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  Center(
                    child: Container(
                      padding: EdgeInsets.only(top: 2.h),
                      child: Column(
                        children: [
                          Image.asset('assets/images/bage.png',height: 15.h,),
                          SizedBox(height: 1.h,),
                          Text('Enough Grocery',style: fBold.copyWith(
                            fontSize: 17,
                            color: EColor.primary,
                          ),),
                          SizedBox(height: 1.h,),
                          Text('A Place for Your grocery',style: fRagular.copyWith(
                            fontSize: 13,
                            color: EColor.cBlack,
                          ),),
                          // SizedBox(
                          //   height: 5.h,
                          // ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 2.h,),
                  Padding(
                    padding: EdgeInsets.only(
                        right: 32.h
                    ),
                    child: Text('Sign Up',style: fBold.copyWith(
                      fontSize: 20,
                    ),),
                  ),
                  SizedBox(height: 2.h,),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 25
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              top: 15,
                              right: 5
                          ),
                          child: Icon(Icons.person,color: EColor.grey,size: 25,),
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
                                    hintText: "User Name",
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
                  SizedBox(height: 2.h,),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 25
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
                  SizedBox(height: 2.h,),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 25
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
                                    suffixIcon: Icon(Icons.visibility_off_outlined,color: EColor.grey,size: 17,),
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
                  SizedBox(height: 2.h,),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 25
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
                                    suffixIcon: Icon(Icons.visibility_off_outlined,color: EColor.grey,size: 17,),
                                    hintText: "Confirm Password",
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
                  SizedBox(height: 4.h,),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 30
                      ),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              style: fRagular.copyWith(
                                color: EColor.cBlack
                              ),
                              text: "By Signing You're agree to our "
                            ),
                            TextSpan(
                                style: fRagular.copyWith(
                                    color: EColor.primary
                                ),
                                text: "Term & Condition"
                            ),
                            TextSpan(
                                style: fRagular.copyWith(
                                    color: EColor.cBlack
                                ),
                                text: " and "
                            ),
                            TextSpan(
                                style: fRagular.copyWith(
                                    color: EColor.primary
                                ),
                                text: "Privacy Policy"
                            ),
                          ]
                        ),
                      )
                    ),
                  ),
                  SizedBox(height: 5.h,),
                  InkWell(
                    onTap: (){
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => GetStart()));
                    },
                    child: Btn3(
                      text: "Log in",
                      color: EColor.primary,
                    ),
                  ),
                  SizedBox(height: 4.h,),
                  InkWell(
                    onTap: (){
                      Get.to(LoginScreen());
                      // Get.back();
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('Joined us Before? ',style: fRagular,),
                        Text('Login',style: TextStyle(
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

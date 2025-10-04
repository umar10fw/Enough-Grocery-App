import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';
import '../../../../common_widget/commonButton.dart';
import '../../../../constants/app_style/color.dart';
import '../../../../constants/app_style/font.dart';
import '../../../../constants/app_style/style.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return Scaffold(
        backgroundColor: EColor.cWhite,
        appBar: AppBar(
          leading: IconButton(
            onPressed: (){
            },
            icon: Icon(Icons.arrow_back_rounded,color: EColor.cGreen,),
          ),
          backgroundColor: EColor.cWhite,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 2.h,),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Let's Get Started",style: fBold.copyWith(
                      fontWeight: FontWeight.w700,
                      fontSize: 20
                    ),),
                    SizedBox(height: 1.h,),
                    Text("Create Account to see our picks for you! ",
                      style: fRagular.copyWith(
                        fontSize: 16
                    ),),
                  ],
                ),
              ),
              Container(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 15,
                    horizontal: 25
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 50,
                        child: textfield(
                          "Email",
                          "Email",
                          Icons.email_outlined,
                        )
                      ),
                      SizedBox(height: 1.h,),
                      SizedBox(
                          height: 50,
                          child: textfield(
                            "Password",
                            "Password",
                            Icons.visibility_off_outlined,
                          )
                      ),
                      SizedBox(height: 1.h,),
                      SizedBox(
                          height: 50,
                          child: textfield(
                            "Confirmation Password",
                            "Confirmation Password",
                            Icons.visibility_off_outlined,
                          )
                      )
                    ],
                  ),
                ),
              ),
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
              SizedBox(height: 2.h,),
              Text('Or',),
              SizedBox(height: 5.h,),
              Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: EColor.cLightWhite
              ),
              color: EColor.cWhite,
              borderRadius: BorderRadius.circular(kBorderRadius),
            ),
            height: 6.h,
            width: Get.size.width-20.w,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.apple_outlined,size: 17,color: EColor.cBlack,),
                SizedBox(
                  width: 1.w,
                ),
                Text('Sign Up with Apply',style: TextStyle(
                    color: EColor.cBlack
                ),),
              ],
            ),
           ),
              SizedBox(height: 2.h,),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                      color: EColor.cLightWhite
                  ),
                  color: EColor.cWhite,
                  borderRadius: BorderRadius.circular(kBorderRadius),
                ),
                height: 6.h,
                width: Get.size.width-20.w,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.email_outlined,size: 17,color: EColor.cBlack,),
                    SizedBox(
                      width: 1.w,
                    ),
                    Text('Sign Up with Google',style: TextStyle(
                        color: EColor.cBlack
                    ),),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    },);
  }
}

Widget textfield ( String hint,String text, IconData icon){
  return TextFormField(
    decoration: InputDecoration(
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: EColor.cGreen),
      ),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.grey),
      ),
      labelText: text,
      // hintText: hint,
      labelStyle: TextStyle(
          fontSize: 15,
          color: EColor.cGreen
      ),
      suffixIcon: Icon(
          icon,
          size: 16,
          color: EColor.cGreen,
      ),
    ),
  );
}
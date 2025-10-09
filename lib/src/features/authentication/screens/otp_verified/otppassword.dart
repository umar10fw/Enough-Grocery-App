import 'package:egrocery/src/features/authentication/controller/otp_controller/otp_controller.dart';
import 'package:egrocery/src/features/authentication/screens/otp_verified/verify.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../../common_widget/btn4.dart';
import '../../../../constants/app_style/color.dart';
import '../../../../constants/app_style/font.dart';

class OtpPassword extends StatefulWidget {
  const OtpPassword({Key? key}) : super(key: key);

  @override
  State<OtpPassword> createState() => _OtpPasswordState();
}

class _OtpPasswordState extends State<OtpPassword> {
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      var otpController = Get.put(OtpController());
      var otp;
      return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: EColor.primary,
          centerTitle: true,
          title: Text("OTP Verification",style: fBold.copyWith(
              color: EColor.cWhite
          )),
        ),
        backgroundColor: EColor.cWhite,
        body: Padding(
          padding: EdgeInsets.only(
            top: 10.h
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.comment,size: 200,
                  color: EColor.primary,
                ),
                Text('OTP Verification',style: fBold.copyWith(
                    fontSize: 17
                ),),
                SizedBox(height: 1.h,),
                Container(
                  child: Text('Enter the OTP send to',
                    textAlign: TextAlign.center,
                    style: fRagular.copyWith(
                        fontSize: 16,
                    ),),
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
                   onSubmit: (code){
                     otp = code;
                     OtpController.instance.verifyOTP(otp);
                  }, // end onSubmit
                ),
                SizedBox(
                  height: 7.h,
                ),
                TextButton(
                    onPressed: (){
                      OtpController.instance.verifyOTP(otp);
                    },
                    child: Text(
                        "Resend OTP",style: fBold.copyWith(
                      color: EColor.primary,
                      fontSize: 17
                    ),
                    )

                ),
                SizedBox(
                  height: 7.h,
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
      );
    },
    );
  }
}

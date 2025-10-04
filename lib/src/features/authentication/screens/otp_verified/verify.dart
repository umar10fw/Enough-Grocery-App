import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import '../../../../common_widget/btn4.dart';
import '../../../../constants/app_style/color.dart';
import '../../../../constants/app_style/font.dart';

class Verify extends StatefulWidget {
  const Verify({Key? key}) : super(key: key);

  @override
  State<Verify> createState() => _VerifyState();
}

class _VerifyState extends State<Verify> {
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return Scaffold(
        backgroundColor: EColor.cWhite,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 17.h,
                ),
              Icon(
                Icons.verified_user,size: 200,
                color: EColor.primary,
              ),
              SizedBox(
                height: 5.h,
              ),
              Text('Verified',style: fBold.copyWith(
                  fontSize: 17
              ),),
              SizedBox(height: 5.h,),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 20
                ),
                child: Text('Your account has been varified successfully',
                  textAlign: TextAlign.center,
                  style: fRagular.copyWith(
                    fontSize: 16,
                  ),),
              ),

              SizedBox(
                height: 15.h,
              ),

              InkWell(
                onTap: (){
                  Get.back();
                },
                child: Btn4(
                  text: "Done!",
                  color: EColor.primary,

                ),
              )

            ],
        ),
          ),
      );
    },
    );
  }
}

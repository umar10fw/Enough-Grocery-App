import 'package:egrocery/src/features/authentication/controller/splash_controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../../constants/app_style/color.dart';
import '../../../../constants/app_style/font.dart';

class Splash extends StatelessWidget {
  Splash({Key? key}) : super(key: key);

  final splashController = Get.put(SplashControllerScreen());

  @override
  Widget build(BuildContext context) {
    splashController.startAnimation();
    return Sizer(
      builder: (context, orientation, deviceType) {
        return Scaffold(
          backgroundColor: EColor.primary,
          body: Stack(
            children: [
              Obx(
                () => AnimatedPositioned(
                  duration: const Duration(milliseconds: 2000),
                  curve: Curves.easeOut,
                  top: splashController.animate.value
                      ? 35.h
                      : -90.h, // start offscreen
                  left: 25.w,
                  child: Image.asset(
                    'assets/images/groceryIcon.png',
                    height: 20.h,
                    width: 50.w,
                  ),
                ),
              ),

              Obx(
                () => AnimatedPositioned(
                  duration: const Duration(milliseconds: 2000),
                  curve: Curves.easeOut,
                  bottom: splashController.animate.value
                      ? 40.h
                      : -90.h, // start offscreen
                  left: 25.w,
                  child: Text(
                    'Enough Grocery',
                    style: fBold.copyWith(
                      fontSize: 25,
                      color: EColor.cWhite,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

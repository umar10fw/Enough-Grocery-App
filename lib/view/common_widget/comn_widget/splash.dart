import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../screen/start.dart';
import '../app_style/color.dart';
import '../app_style/font.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
            ()=>
                Get.to(Start())
    );
  }

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return Scaffold(
        backgroundColor: EColor.primary,
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/groceryIcon.png',height: 20.h,width: 50.w,),
              SizedBox(height: 2.h,),
              Text('Enough Grocery',style: fBold.copyWith(
                fontSize: 25,
                color: EColor.cWhite,
              ),),

            ],
          ),
        ),
      );
    },
    );
  }
}

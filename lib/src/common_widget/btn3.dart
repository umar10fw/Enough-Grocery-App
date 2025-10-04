import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';

import '../../../src/constants/app_style/color.dart';
import '../constants/app_style/font.dart';
import '../constants/app_style/style.dart';

class Btn3 extends StatelessWidget {
  Btn3({Key? key,
    required this.text,
    required this.color,
    this.iconcolor,
    this.icon
  }) : super(key: key);

  String text;
  IconData? icon;
  Color color=EColor.cGreen;
  Color? iconcolor;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(kBorderRadius),
      ),
      height: 6.h,
      width: Get.size.width-20.w,
      child: Center(
        child: Text(text,style: fSemiBold.copyWith(
            color: EColor.cWhite,
          fontSize: 15
        )),
      ),
    );
  }
}

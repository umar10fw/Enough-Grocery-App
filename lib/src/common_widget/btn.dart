import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../constants/app_style/color.dart';
import '../constants/app_style/font.dart';
import '../constants/app_style/style.dart';

class Btn extends StatelessWidget {
  Btn({Key? key,
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
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon,size: 17,color: iconcolor,),
          SizedBox(
            width: 1.w,
          ),
          Text(text,style: fSemiBold.copyWith(
              color: EColor.cWhite
          ))
        ],
      ),
    );
  }
}

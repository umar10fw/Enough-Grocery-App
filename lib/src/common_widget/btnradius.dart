import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../constants/app_style/color.dart';
import '../constants/app_style/font.dart';
import '../constants/app_style/style.dart';

class RadiusBtn extends StatelessWidget {
  RadiusBtn({Key? key,
    this.textcolor,
    this.iconcolor,
    required this.text,
    required this.color,
    this.icon}) : super(key: key);

  Color? iconcolor;
  Color? textcolor;
  String text;
  IconData? icon;
  Color color=EColor.cGreen;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        border:Border.all(color: EColor.primary),
        borderRadius: BorderRadius.circular(kBorderRadius,),
      ),
      height: 6.h,
      width: Get.size.width-20.w,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon,size: 23,color: iconcolor,),
          SizedBox(
            width: 3.w,
          ),
          Text( text, style: fMedium.copyWith(
              color: textcolor,
              fontSize: 17
          ))
        ],
      ),
    );
  }
}

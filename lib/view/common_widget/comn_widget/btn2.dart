import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../app_style/color.dart';
import '../app_style/font.dart';
import '../app_style/style.dart';

class Btn2 extends StatelessWidget {
  Btn2({Key? key,
    this.onpress,
    this.textcolor,
    this.iconcolor,
    required this.text,
    required this.color,
    this.icon}) : super(key: key);

  Color? iconcolor;
  Color? textcolor;
  String text;
  Function()? onpress;
  IconData? icon;
  Color color=EColor.cGreen;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpress,
      child: Container(
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
      ),
    );
  }
}

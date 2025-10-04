

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../constants/app_style/colorfile.dart';


class CommonButton extends StatelessWidget {

String title;
Function() onpress;
Color? color;
Color? textcolor;
IconData? icon;
Color? iconcolor;

   CommonButton({
    Key? key,
    this.icon,
    this.iconcolor,
    required this.title,
    required this.onpress,
    this.color=EColor.app_color,
    this.textcolor=EColor.color_white
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 15),
        child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20)
            ),
           height: 6.h,
        width: 80.w,
          child: Container(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: StadiumBorder(),
                  backgroundColor: color),
              onPressed: onpress,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(icon,size: 17,color: iconcolor,),
                  SizedBox(width: 2.w,),
                  Text(title,
                    style: TextStyle(
                        color:textcolor,
                        fontWeight: FontWeight.w500,
                        fontSize: 15
                    ),),
                ],
              ),

            ),
          )
        ),
      ),
    );
  }
}

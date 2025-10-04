import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../../common_widget/btn3.dart';
import '../../../../constants/app_style/color.dart';
import '../../../../constants/app_style/font.dart';
import '../getstart_screen/getstart.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: EColor.cWhite,
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                opacity: 0.2,
                image: AssetImage('assets/images/bgimg.jpg',)
              )
            ),
          ),
         Column(
           children: [
             Container(
                padding: EdgeInsets.only(top: 20.h),
                 margin: EdgeInsets.all(0.h),
                 child: Column(
                   children: [
                     Image.asset('assets/images/bage.png',height: 18.h,width: 100.w,),
                     Text('Enough Grocery',style: fSemiBold.copyWith(
                       fontSize: 25,
                       color: EColor.primary,
                     ),),
                     Text('A Place for Your grocery',style: fRagular.copyWith(
                       fontSize: 15,
                       color: EColor.cBlack,
                     ),),
                     SizedBox(height: 30.h,),
                     Column(
                       children: [
                         // CommonButton(
                         //     title: "Login",
                         //     color: EColor.primary,
                         //     textcolor: EColor.cWhite,
                         //     onpress: (){
                         //       Navigator.push(
                         //           context,
                         //           MaterialPageRoute(
                         //               builder: (context) => GetStart()));
                         //     }
                         // ),
                         SizedBox(height: 0.5.h,),
                         InkWell(
                           onTap: (){
                            Get.to(GetStart());
                            // Get.back();
                           },
                           child: Btn3(
                             text: "Log in",
                             color: EColor.primary,
                           ),
                         ),
                         SizedBox(height: 2.h,),
                         OutlinedButton(
                             onPressed: (){},
                           style: OutlinedButton.styleFrom(
                             shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(10)),
                             side: BorderSide(
                                 color: EColor.primary,
                                 width: 1.5,

                             ), //<-- SEE HERE
                           ),
                             child: Padding(
                               padding: EdgeInsets.symmetric(
                                 horizontal: 16.w,
                                 vertical: 3.5.w
                               ),
                               child: Text(
                                 "Continue as Guest! ",
                                 style: fMedium.copyWith(
                                     fontSize: 15,
                                     color: EColor.cBlack,
                                 ),
                               ),
                             ),
                         )
                         // CommonButton(
                         //     iconcolor: EColor.cBlack,
                         //     icon: Icons.email_outlined,
                         //     title: "Sign Up with Email",
                         //     color: EColor.cWhite,
                         //     textcolor: EColor.cBlack,
                         //     onpress: (){}),

                       ],
                     ),
                   ],
                 )),
             // Padding(
             //   padding: EdgeInsets.only(top:10.h),
             //   child: Container(
             //     // decoration: BoxDecoration(
             //     //     borderRadius: BorderRadius.only(
             //     //       topLeft: Radius.circular(kRadius),
             //     //       topRight: Radius.circular(kRadius),
             //     //     )
             //     // ),
             //     child: Padding(
             //       padding: EdgeInsets.all(7.w),
             //       child:
             //     ),
             //   ),
             // )
           ],
         )
        ],
      ),
    );
  }
}

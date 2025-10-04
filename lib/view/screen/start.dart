import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../common_widget/app_style/color.dart';
import '../common_widget/app_style/font.dart';
import '../common_widget/comn_widget/btn3.dart';
import 'onboard.dart';

class Start extends StatefulWidget {
  const Start({Key? key}) : super(key: key);

  @override
  State<Start> createState() => _StartState();
}

class _StartState extends State<Start> {
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      // return Scaffold(
      //     body: Stack(
      //       children: [
      //         Container(
      //           decoration: BoxDecoration(
      //               image: DecorationImage(
      //                   fit: BoxFit.cover,
      //                   image: AssetImage("assets/vge.jpg")
      //               )
      //           ),
      //         ),
      //         Container(
      //           color: Colors.black54,
      //           height: double.infinity,
      //           width: double.infinity,
      //         ),
      //         Center(
      //           child: Column(
      //             crossAxisAlignment: CrossAxisAlignment.center,
      //             mainAxisAlignment: MainAxisAlignment.center,
      //             children: [
      //               Container(
      //                   height: MediaQuery.of(context).size.height*0.2,
      //                   child: Image.asset('assets/images/bage.png',)),
      //               SizedBox(height: 3.h,),
      //               Text('Enough Grocery',style: fBold.copyWith(
      //                 color: EColor.cWhite,
      //                 fontSize: 30,
      //               )),
      //               // Text('Your Daily Need',style: fRagular.copyWith(
      //               //   color: EColor.cWhite,
      //               //   fontSize: 20,
      //               // )),
      //             ],
      //           ),
      //         ),
      //         Container(
      //           margin: EdgeInsets.symmetric(vertical: 50),
      //           child: Align(
      //               alignment: Alignment.bottomCenter,
      //               child: InkWell(
      //                   onTap: (){
      //                     Navigator.push(
      //                         context,
      //                         MaterialPageRoute(
      //                             builder: (context) => Onbording()));
      //                   },
      //                   child: Btn(text: 'Get Started', color: EColor.primary))),
      //         ),
      //       ],
      //     )
      // );
      return Scaffold(
        backgroundColor: EColor.cWhite,
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      opacity: 0.3,
                      image: AssetImage('assets/images/bgimg.jpg',)
                  )
              ),
            ),
            Column(
              children: [
                Container(
                    padding: EdgeInsets.only(top: 25.h),
                    margin: EdgeInsets.all(0.h),
                    child: Column(
                      children: [
                        Image.asset('assets/images/bage.png',height: 18.h,width: 100.w,),
                        SizedBox(height: 2.h,),
                        Text('Enough Grocery',style: fSemiBold.copyWith(
                          fontSize: 25,
                          color: EColor.primary,
                        ),),
                        Text('A Place for Your grocery',style: fRagular.copyWith(
                          fontSize: 15,
                          color: EColor.cBlack,
                        ),),
                        SizedBox(height: 35.h,),
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
                                Get.to(Onbording());
                                // Get.back();
                              },
                              child: Btn3(
                                text: "Get Started",
                                color: EColor.primary,
                              ),
                            ),
                            // SizedBox(height: 2.h,),
                            // OutlinedButton(
                            //   onPressed: (){},
                            //   style: OutlinedButton.styleFrom(
                            //     shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(10)),
                            //     side: BorderSide(
                            //       color: EColor.primary,
                            //       width: 1.5,
                            //
                            //     ), //<-- SEE HERE
                            //   ),
                            //   child: Padding(
                            //     padding: EdgeInsets.symmetric(
                            //         horizontal: 60,
                            //         vertical: 13
                            //     ),
                            //     child: Text(
                            //       "Continue as Guest! ",
                            //       style: fMedium.copyWith(
                            //         fontSize: 15,
                            //         color: EColor.cBlack,
                            //       ),
                            //     ),
                            //   ),
                            // )
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
    },
    );
  }
}

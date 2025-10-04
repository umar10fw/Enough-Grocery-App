import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import '../../../../constants/app_style/color.dart';
import '../../../../constants/app_style/font.dart';

import 'content_model.dart';
import '../start_screen/login.dart';


class Onbording extends StatefulWidget {
  @override
  _OnbordingState createState() => _OnbordingState();
}

class _OnbordingState extends State<Onbording> {
  int currentIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: EColor.cWhite,
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _controller,
              itemCount: contents.length,
              onPageChanged: (int index) {
                setState(() {
                  currentIndex = index;
                });
              },
              itemBuilder: (_, i) {
                return Padding(
                  padding: const EdgeInsets.all(40),
                  child: Column(
                    children: [
                      SizedBox(height: 10.h,),
                      Container(
                        // padding: EdgeInsets.only(top: 70),
                        height: 230,
                        child: Image(
                          image: AssetImage(
                          contents[i].image,
                          )),
                      ),
                      Text(
                        contents[i].title,
                        style: fBold.copyWith(
                          color: EColor.primary,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        )
                      ),
                      SizedBox(height: 20),
                      Center(
                        child: Align(
                          alignment: Alignment.topRight,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                               horizontal:30),
                            child: Text(
                              contents[i].discription,
                              textAlign: TextAlign.start,
                                style: fRagular.copyWith(
                                  color: EColor.cBlack,
                                  fontSize: 14,
                                )
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      contents.length,
                          (index) => buildDot(index, context),
                    ),
                  ),
                ),
                CircleAvatar(
                  radius: 25,
                  backgroundColor: EColor.primary,
                  child: IconButton(
                    onPressed: (){
                        if (currentIndex == contents.length - 1) {
                          Get.to(Login());
                          // Get.back();
                        }
                        _controller.nextPage(
                            duration: Duration(milliseconds: 100),
                      curve: Curves.easeOut);
                    },
                    icon: Icon(Icons.arrow_forward,size: 25, color: EColor.cWhite,),
                  ),
                )
                // Container(
                //   decoration: BoxDecoration(
                //     borderRadius: BorderRadius.all(Radius.circular(6)),
                //     color: EColor.primary
                //   ),
                //   height: 45,
                //   margin: EdgeInsets.all(50),
                //   width: double.infinity,
                //
                //   child: TextButton(
                //     child: Text(
                //         currentIndex == contents.length - 1 ? "Login" : "Next",
                //       style: TextStyle(color: EColor.cWhite,fontSize: 20),),
                //     onPressed: () {
                //       if (currentIndex == contents.length - 1) {
                //         Navigator.pushReplacement(
                //           context,
                //           MaterialPageRoute(
                //             builder: (_) => Welcome(),
                //           ),
                //         );
                //       }
                //       _controller.nextPage(
                //         duration: Duration(milliseconds: 100),
                //         curve: Curves.bounceIn,
                //       );
                //     },
                //   ),
                // )
              ],
            ),
          )
        ],
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
      width: currentIndex == index ? 25 : 10,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: EColor.primary,
      ),
    );
  }
}
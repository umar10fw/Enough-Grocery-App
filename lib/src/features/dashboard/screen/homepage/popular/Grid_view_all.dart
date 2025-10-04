import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../../constants/app_style/colorfile.dart';
import '../../../../../constants/app_style/font.dart';
import '../../../../../constants/app_style/style.dart';

class Popular_viewall extends StatefulWidget {
  const Popular_viewall({Key? key}) : super(key: key);

  @override
  State<Popular_viewall> createState() => _Popular_viewallState();
}

class _Popular_viewallState extends State<Popular_viewall> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: EColor.primary_home,
      appBar: AppBar(
        backgroundColor: EColor.primary,
        centerTitle: true,
        elevation: 0,
        title: Text("Popular Deals",style: fBold.copyWith(
            color: EColor.cWhite
        )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(
          crossAxisCount: 2,
          children: List<Widget>.generate(124, (index) {
            return GridTile(
              child:  Center(
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: EColor.cWhite,
                            borderRadius: BorderRadius.circular(kBorderRadius),
                          ),
                          width: 160,
                          height: 165,
                          child: Padding(
                            padding: EdgeInsets.only(
                                top: 1.h
                            ),
                            child: Column(
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset('assets/images/surf-2.png',height: 90),
                                    Text("Product Name",style: fRagular.copyWith(
                                        color: EColor.cBlack,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600
                                    ),),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text("Rs 250",style: fBold.copyWith(
                                            fontSize: 14,
                                            color: EColor.primary
                                        ),),
                                        SizedBox(
                                          width: 1.h,
                                        ),
                                        Text("Rs 250",
                                          style: fRagular.copyWith(
                                              decoration: TextDecoration.lineThrough,
                                              fontSize: 12,
                                              color: EColor.grey
                                          ),),
                                      ],
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          color: EColor.primary,
                                          borderRadius: BorderRadius.circular(5)
                                      ),
                                      width: 80,
                                      height: 20,
                                      child: Padding(
                                        padding: const EdgeInsets.all(1.5),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                          children: [
                                            CircleAvatar(
                                                radius: 8,
                                                backgroundColor: EColor.cWhite,
                                                child: Icon(Icons.remove,size: 15,color: EColor.primary,)),
                                            Text("X2",style: fMedium.copyWith(
                                                fontSize: 13,
                                                color: EColor.cWhite
                                            ),),
                                            CircleAvatar(
                                                radius: 8,
                                                backgroundColor: EColor.cWhite,
                                                child: Icon(Icons.add,size: 15,color: EColor.primary,)),
                                          ],
                                        ),
                                      ),

                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: -10,
                          left: 110,
                          child: Center(
                            child: IconButton(
                              onPressed: (){},
                              icon: Icon(Icons.favorite_border,size: 20,),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}


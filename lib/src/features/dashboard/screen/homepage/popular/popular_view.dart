import 'dart:convert';
import 'package:egrocery/src/constants/app_style/font.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import '../../../../../constants/app_style/colorfile.dart';
import '../../../../../constants/app_style/style.dart';
import 'Grid_view_all.dart';
import '../../../model/popular_model/model.dart';

class Popular_view extends StatefulWidget {
  const Popular_view({Key? key}) : super(key: key);

  @override
  State<Popular_view> createState() => _Popular_viewState();
}

class _Popular_viewState extends State<Popular_view> {

  Future<List<popular>> getdatapopular() async {
    String data = await DefaultAssetBundle.of(context).loadString("assets/json/popular.json");
    List mapdata = jsonDecode(data);
    print(mapdata);
    List<popular> Popular = mapdata.map((e) => popular.fromJson(e)).toList();
    return Popular;

  }

  @override
  void initState() {
    getdatapopular();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Popular Deals", style: fSemiBold.copyWith(
                color: EColor.cBlack,
                fontSize: 15
            ),),
            InkWell(
              onTap: (){
                Get.to(Popular_viewall());
              },
              child: Text("View all", style: fMedium.copyWith(
                  color: EColor.primary,
                  fontSize: 15
              ),),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(
              top: 1.h
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  width: 350,
                  height: 168,
                  child: FutureBuilder(
                    future: getdatapopular(),
                    builder: (context, data) {
                    if(data.hasData){
                      List<popular> popularitem = data.data!;
                      return ListView.builder(
                          physics: BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemCount: popularitem.length,
                          itemBuilder: (context, index) {
                            return Container(
                              margin: EdgeInsets.only(
                                left: 7
                              ),
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
                                       width: 120,
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
                                                 Image.asset(popularitem[index].image!,height: 90),
                                                 Text(popularitem[index].name!,style: fRagular.copyWith(
                                                     color: EColor.cBlack,
                                                     fontSize: 12,
                                                     fontWeight: FontWeight.w600
                                                 ),),
                                                 Row(
                                                   mainAxisAlignment: MainAxisAlignment.center,
                                                   children: [
                                                     Text("Rs "+ popularitem[index].price.toString(),style: fBold.copyWith(
                                                         fontSize: 14,
                                                         color: EColor.primary
                                                     ),),
                                                     SizedBox(
                                                       width: 1.h,
                                                     ),
                                                     Text("Rs "+ popularitem[index].discount.toString(),
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
                                                         Text("X"+ popularitem[index].quantity.toString(),style: fMedium.copyWith(
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
                                       left: 80,
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
                            );
                          },

                      );
                    }else{
                      return CircularProgressIndicator();
                    }
                  },),
                )

                // Column(
                //   // mainAxisAlignment: MainAxisAlignment.center,
                //   // crossAxisAlignment: CrossAxisAlignment.center,
                //   children: [
                //    Stack(
                //      children: [
                //        Container(
                //          decoration: BoxDecoration(
                //            color: EColor.cWhite,
                //            borderRadius: BorderRadius.circular(kBorderRadius),
                //          ),
                //          width: 120,
                //          height: 165,
                //          child: Padding(
                //            padding: EdgeInsets.only(
                //              top: 1.h
                //            ),
                //            child: Column(
                //              children: [
                //                Column(
                //                  mainAxisAlignment: MainAxisAlignment.center,
                //                  crossAxisAlignment: CrossAxisAlignment.center,
                //                  children: [
                //                    Image.asset('assets/images/surf-2.png',height: 90),
                //                    Text("Product Name",style: fRagular.copyWith(
                //                        color: EColor.cBlack,
                //                        fontSize: 12,
                //                        fontWeight: FontWeight.w600
                //                    ),),
                //                    Row(
                //                      mainAxisAlignment: MainAxisAlignment.center,
                //                      children: [
                //                        Text("Rs 250",style: fBold.copyWith(
                //                            fontSize: 14,
                //                            color: EColor.primary
                //                        ),),
                //                        SizedBox(
                //                          width: 1.h,
                //                        ),
                //                        Text("Rs 250",
                //                          style: fRagular.copyWith(
                //                              decoration: TextDecoration.lineThrough,
                //                              fontSize: 12,
                //                              color: EColor.grey
                //                          ),),
                //                      ],
                //                    ),
                //                    Container(
                //                      decoration: BoxDecoration(
                //                          color: EColor.primary,
                //                          borderRadius: BorderRadius.circular(5)
                //                      ),
                //                      width: 80,
                //                      height: 20,
                //                      child: Padding(
                //                        padding: const EdgeInsets.all(1.5),
                //                        child: Row(
                //                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                //                          children: [
                //                            CircleAvatar(
                //                              radius: 8,
                //                                backgroundColor: EColor.cWhite,
                //                                child: Icon(Icons.remove,size: 15,color: EColor.primary,)),
                //                            Text("X2",style: fMedium.copyWith(
                //                              fontSize: 13,
                //                              color: EColor.cWhite
                //                            ),),
                //                            CircleAvatar(
                //                                radius: 8,
                //                                backgroundColor: EColor.cWhite,
                //                                child: Icon(Icons.add,size: 15,color: EColor.primary,)),
                //                          ],
                //                        ),
                //                      ),
                //
                //                    )
                //                  ],
                //                )
                //              ],
                //            ),
                //          ),
                //        ),
                //        Positioned(
                //          top: -10,
                //          left: 80,
                //          child: Center(
                //            child: IconButton(
                //              onPressed: (){},
                //              icon: Icon(Icons.favorite_border,size: 20,),
                //            ),
                //          ),
                //        ),
                //      ],
                //    )
                //   ],
                // ),
                // SizedBox(width: 2.h,),

              ],
            ),
          ),
        )
      ],
    );
  }
}

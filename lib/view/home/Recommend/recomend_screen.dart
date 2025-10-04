import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../common_widget/app_style/color.dart';
import '../../common_widget/app_style/font.dart';
import '../../common_widget/app_style/style.dart';
import 'model.dart';

class Recommend extends StatefulWidget {
  const Recommend({Key? key}) : super(key: key);

  @override
  State<Recommend> createState() => _RecommendState();
}

class _RecommendState extends State<Recommend> {

  Future<List<recommend>> getrecommeddata() async {
    String data = await DefaultAssetBundle.of(context).loadString("assets/json/recommend.json");
    List mapdata = jsonDecode(data);
    print(mapdata);
    List<recommend> rocommenditem = mapdata.map((e) => recommend.fromJson(e)).toList();
    return rocommenditem;
  }

  @override
  void initState() {
    getrecommeddata();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Recommend for you", style: fSemiBold.copyWith(
                color: EColor.cBlack,
                fontSize: 15
            ),),
            Text("View all", style: fMedium.copyWith(
                color: EColor.primary,
                fontSize: 15
            ),),
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

                 height: 130,
                 width: 350,
                 child: FutureBuilder(
                   future: getrecommeddata(),
                   builder: (context, data) {
                   if(data.hasData){
                     List<recommend> recomend = data.data!;
                    return ListView.builder(
                        scrollDirection: Axis.horizontal,
                        physics: BouncingScrollPhysics(),
                        itemCount: recomend.length,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.only(
                                left: 7
                            ),
                            decoration: BoxDecoration(
                                color: EColor.cWhite,
                                borderRadius: BorderRadius.circular(kBorderRadius)
                            ),
                            width: 200,
                            height: 120,
                            child: Padding(
                              padding: const EdgeInsets.all(5),
                              child: SizedBox(
                                // color: EColor.cGreen,
                                width: 200,
                                height: 120,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                              color: EColor.primary,
                                              borderRadius: BorderRadius.circular(5)
                                          ),
                                          width: 65,
                                          height: 20,
                                          child: Center(child: Text(recomend[index].off.toString()+ "% OFF",style: fMedium.copyWith(
                                              color: EColor.cWhite,
                                              fontSize: 12
                                          ))),

                                        ),
                                        SizedBox(
                                            height: 20,
                                            width: 20,
                                            child: Image.asset("assets/images/favoriticon.png",))
                                      ],
                                    ),
                                    SizedBox(
                                      height: 65,
                                      width: 180,
                                      child: Row(
                                        children: [
                                          SizedBox(
                                            height: 65,
                                            width: 70,
                                            child: Image.asset(recomend[index].image!,fit: BoxFit.cover,),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.symmetric(
                                                vertical: .7.h
                                            ),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                Text(recomend[index].name!,style: fMedium.copyWith(
                                                  fontSize: 13,
                                                ),),
                                                Text(recomend[index].subtitle!,
                                                  style: fMedium.copyWith(
                                                    fontSize: 7,
                                                  ),),
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                  children: [
                                                    Text("Rs "+ recomend[index].price.toString(),style: fBold.copyWith(
                                                        fontSize: 14,
                                                        color: EColor.primary
                                                    ),),
                                                    SizedBox(
                                                      width: 1.h,
                                                    ),
                                                    Text("Rs "+ recomend[index].discount.toString(),
                                                      style: fRagular.copyWith(
                                                          decoration: TextDecoration.lineThrough,
                                                          fontSize: 12,
                                                          color: EColor.grey
                                                      ),),
                                                  ],
                                                ),

                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [

                                        Container(
                                          decoration: BoxDecoration(
                                              color: EColor.cred,
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
                                                    child: Image.asset("assets/images/troli.png",height: 10,color: EColor.cred,)),
                                                Text("Add to Card",style: fBold.copyWith(
                                                    fontSize: 8,
                                                    color: EColor.cWhite
                                                ),),
                                              ],
                                            ),
                                          ),

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
                                                Text("X"+ recomend[index].quantity.toString(),style: fMedium.copyWith(
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

                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                    );
                   }else{
                     return CircularProgressIndicator();
                   }
                 },),
               )

               // SizedBox(width: 1.h,),
               // Container(
               //   decoration: BoxDecoration(
               //       color: EColor.cWhite,
               //       borderRadius: BorderRadius.circular(kBorderRadius)
               //   ),
               //   width: 200,
               //   height: 120,
               //   child: Padding(
               //     padding: const EdgeInsets.all(5),
               //     child: SizedBox(
               //       // color: EColor.cGreen,
               //       width: 200,
               //       height: 120,
               //       child: Column(
               //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
               //         children: [
               //           Row(
               //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
               //             children: [
               //               Container(
               //                 decoration: BoxDecoration(
               //                     color: EColor.primary,
               //                     borderRadius: BorderRadius.circular(5)
               //                 ),
               //                 width: 65,
               //                 height: 20,
               //                 child: Center(child: Text("20% OFF",style: fMedium.copyWith(
               //                     color: EColor.cWhite,
               //                     fontSize: 12
               //                 ))),
               //
               //               ),
               //               SizedBox(
               //                   height: 20,
               //                   width: 20,
               //                   child: Image.asset("assets/images/favoriticon.png",))
               //             ],
               //           ),
               //           SizedBox(
               //             height: 65,
               //             width: 180,
               //             child: Row(
               //               children: [
               //                 SizedBox(
               //                   height: 65,
               //                   width: 70,
               //                   child: Image.asset("assets/images/basket-full-vegetables.png",fit: BoxFit.cover,),
               //                 ),
               //                 Padding(
               //                   padding: EdgeInsets.symmetric(
               //                       vertical: .7.h
               //                   ),
               //                   child: Column(
               //                     crossAxisAlignment: CrossAxisAlignment.start,
               //                     mainAxisAlignment: MainAxisAlignment.start,
               //                     children: [
               //                       Text("Product Name",style: fMedium.copyWith(
               //                         fontSize: 13,
               //                       ),),
               //                       Text("Lorem ipsum dolor sit amet",
               //                         style: fMedium.copyWith(
               //                           fontSize: 7,
               //                         ),),
               //                       Row(
               //                         mainAxisAlignment: MainAxisAlignment.spaceAround,
               //                         children: [
               //                           Text("Rs 250",style: fBold.copyWith(
               //                               fontSize: 14,
               //                               color: EColor.primary
               //                           ),),
               //                           SizedBox(
               //                             width: 1.h,
               //                           ),
               //                           Text("Rs 250",
               //                             style: fRagular.copyWith(
               //                                 decoration: TextDecoration.lineThrough,
               //                                 fontSize: 12,
               //                                 color: EColor.grey
               //                             ),),
               //                         ],
               //                       ),
               //
               //                     ],
               //                   ),
               //                 )
               //               ],
               //             ),
               //           ),
               //           Row(
               //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
               //             children: [
               //
               //               Container(
               //                 decoration: BoxDecoration(
               //                     color: EColor.cred,
               //                     borderRadius: BorderRadius.circular(5)
               //                 ),
               //                 width: 80,
               //                 height: 20,
               //                 child: Padding(
               //                   padding: const EdgeInsets.all(1.5),
               //                   child: Row(
               //                     mainAxisAlignment: MainAxisAlignment.spaceAround,
               //                     children: [
               //                       CircleAvatar(
               //                           radius: 8,
               //                           backgroundColor: EColor.cWhite,
               //                           child: Image.asset("assets/images/troli.png",height: 10,color: EColor.cred,)),
               //                       Text("Add to Card",style: fBold.copyWith(
               //                           fontSize: 8,
               //                           color: EColor.cWhite
               //                       ),),
               //                     ],
               //                   ),
               //                 ),
               //
               //               ),
               //               Container(
               //                 decoration: BoxDecoration(
               //                     color: EColor.primary,
               //                     borderRadius: BorderRadius.circular(5)
               //                 ),
               //                 width: 80,
               //                 height: 20,
               //                 child: Padding(
               //                   padding: const EdgeInsets.all(1.5),
               //                   child: Row(
               //                     mainAxisAlignment: MainAxisAlignment.spaceAround,
               //                     children: [
               //                       CircleAvatar(
               //                           radius: 8,
               //                           backgroundColor: EColor.cWhite,
               //                           child: Icon(Icons.remove,size: 15,color: EColor.primary,)),
               //                       Text("X2",style: fMedium.copyWith(
               //                           fontSize: 13,
               //                           color: EColor.cWhite
               //                       ),),
               //                       CircleAvatar(
               //                           radius: 8,
               //                           backgroundColor: EColor.cWhite,
               //                           child: Icon(Icons.add,size: 15,color: EColor.primary,)),
               //                     ],
               //                   ),
               //                 ),
               //
               //               ),
               //             ],
               //           ),
               //         ],
               //       ),
               //     ),
               //   ),
               // ),
               // SizedBox(width: 1.h,),
               // Container(
               //   decoration: BoxDecoration(
               //       color: EColor.cWhite,
               //       borderRadius: BorderRadius.circular(kBorderRadius)
               //   ),
               //   width: 200,
               //   height: 120,
               //   child: Padding(
               //     padding: const EdgeInsets.all(5),
               //     child: SizedBox(
               //       // color: EColor.cGreen,
               //       width: 200,
               //       height: 120,
               //       child: Column(
               //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
               //         children: [
               //           Row(
               //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
               //             children: [
               //               Container(
               //                 decoration: BoxDecoration(
               //                     color: EColor.primary,
               //                     borderRadius: BorderRadius.circular(5)
               //                 ),
               //                 width: 65,
               //                 height: 20,
               //                 child: Center(child: Text("20% OFF",style: fMedium.copyWith(
               //                     color: EColor.cWhite,
               //                     fontSize: 12
               //                 ))),
               //
               //               ),
               //               SizedBox(
               //                   height: 20,
               //                   width: 20,
               //                   child: Image.asset("assets/images/favoriticon.png",))
               //             ],
               //           ),
               //           SizedBox(
               //             height: 65,
               //             width: 180,
               //             child: Row(
               //               children: [
               //                 SizedBox(
               //                   height: 65,
               //                   width: 70,
               //                   child: Image.asset("assets/images/basket-full-vegetables.png",fit: BoxFit.cover,),
               //                 ),
               //                 Padding(
               //                   padding: EdgeInsets.symmetric(
               //                       vertical: .7.h
               //                   ),
               //                   child: Column(
               //                     crossAxisAlignment: CrossAxisAlignment.start,
               //                     mainAxisAlignment: MainAxisAlignment.start,
               //                     children: [
               //                       Text("Product Name",style: fMedium.copyWith(
               //                         fontSize: 13,
               //                       ),),
               //                       Text("Lorem ipsum dolor sit amet",
               //                         style: fMedium.copyWith(
               //                           fontSize: 7,
               //                         ),),
               //                       Row(
               //                         mainAxisAlignment: MainAxisAlignment.spaceAround,
               //                         children: [
               //                           Text("Rs 250",style: fBold.copyWith(
               //                               fontSize: 14,
               //                               color: EColor.primary
               //                           ),),
               //                           SizedBox(
               //                             width: 1.h,
               //                           ),
               //                           Text("Rs 250",
               //                             style: fRagular.copyWith(
               //                                 decoration: TextDecoration.lineThrough,
               //                                 fontSize: 12,
               //                                 color: EColor.grey
               //                             ),),
               //                         ],
               //                       ),
               //
               //                     ],
               //                   ),
               //                 )
               //               ],
               //             ),
               //           ),
               //           Row(
               //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
               //             children: [
               //
               //               Container(
               //                 decoration: BoxDecoration(
               //                     color: EColor.cred,
               //                     borderRadius: BorderRadius.circular(5)
               //                 ),
               //                 width: 80,
               //                 height: 20,
               //                 child: Padding(
               //                   padding: const EdgeInsets.all(1.5),
               //                   child: Row(
               //                     mainAxisAlignment: MainAxisAlignment.spaceAround,
               //                     children: [
               //                       CircleAvatar(
               //                           radius: 8,
               //                           backgroundColor: EColor.cWhite,
               //                           child: Image.asset("assets/images/troli.png",height: 10,color: EColor.cred,)),
               //                       Text("Add to Card",style: fBold.copyWith(
               //                           fontSize: 8,
               //                           color: EColor.cWhite
               //                       ),),
               //                     ],
               //                   ),
               //                 ),
               //
               //               ),
               //               Container(
               //                 decoration: BoxDecoration(
               //                     color: EColor.primary,
               //                     borderRadius: BorderRadius.circular(5)
               //                 ),
               //                 width: 80,
               //                 height: 20,
               //                 child: Padding(
               //                   padding: const EdgeInsets.all(1.5),
               //                   child: Row(
               //                     mainAxisAlignment: MainAxisAlignment.spaceAround,
               //                     children: [
               //                       CircleAvatar(
               //                           radius: 8,
               //                           backgroundColor: EColor.cWhite,
               //                           child: Icon(Icons.remove,size: 15,color: EColor.primary,)),
               //                       Text("X2",style: fMedium.copyWith(
               //                           fontSize: 13,
               //                           color: EColor.cWhite
               //                       ),),
               //                       CircleAvatar(
               //                           radius: 8,
               //                           backgroundColor: EColor.cWhite,
               //                           child: Icon(Icons.add,size: 15,color: EColor.primary,)),
               //                     ],
               //                   ),
               //                 ),
               //
               //               ),
               //             ],
               //           ),
               //         ],
               //       ),
               //     ),
               //   ),
               // ),
               // SizedBox(width: 1.h,),
             ],
           ),
         ),
       )
      ],
    );
  }
}

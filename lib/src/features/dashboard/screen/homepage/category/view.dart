// import 'dart:convert';
//
// import 'package:enough_grocery/view/common_widget/app_style/font.dart';
// import 'package:enough_grocery/view/home/category/model.dart';
// import 'package:flutter/material.dart';
// import 'package:sizer/sizer.dart';
// import 'package:flutter/services.dart' as rootBundle;
//
// class CategoryFile extends StatefulWidget {
//   const CategoryFile({Key? key}) : super(key: key);
//
//   @override
//   State<CategoryFile> createState() => _CategoryFileState();
// }
//
// class _CategoryFileState extends State<CategoryFile> {
//
//   @override
//   Widget build(BuildContext context) {
//     return  Sizer(builder: (context, orientation, deviceType) {
//       return FutureBuilder(
//         future: ReadJsonData(),
//         builder: (context, data) {
//           if(data.hasData){
//             return Center(child: Text("${data.error}"),);
//           } else if(data.hasData){
//             var item = data.data as List<productmodel>;
//             return ListView.builder(
//                 itemCount: item == null? 0 : item.length,
//                 itemBuilder: ((context, index) {
//                   return Container(
//                     padding: EdgeInsets.symmetric(
//                         horizontal: 0,
//                         vertical: 5
//                     ),
//                     child: SingleChildScrollView(
//                       scrollDirection: Axis.horizontal,
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                         children: [
//                           Column(
//                             children: [
//                               CircleAvatar(
//                                 backgroundColor: Colors.white,
//                                 radius: 35,
//                                 child: Padding(
//                                   padding: const EdgeInsets.all(8.0),
//                                   child: Center(child: Image.asset(
//                                     item[index].imageUrl.toString())),
//                                 ),
//                               ),
//                               Text(item[index].name.toString(),style: fRagular.copyWith(
//                                   fontSize: 13
//                               ),)
//                             ],
//                           ),
//                           SizedBox(
//                             width: 2.h,
//                           ),
//                         ],
//                       ),
//                     ),
//                   );
//             }));
//           } else{
//             return Center(child: CircularProgressIndicator(),);
//           }
//         },
//       );
//
//     },
//    );
//   }
//
//   Future<List<productmodel>>ReadJsonData() async {
//     final jsondata = await rootBundle.rootBundle.loadString('assets/json/prouct.json');
//     final list = json.decode(jsondata) as  List<dynamic>;
//     return list.map((e) => productmodel.fromJson(e)).toList();
//   }
//   // Future SurahTitleLoadData() async {
//   //   final url="assets/json/product";
//   //   var data = await rootBundle.loadString(url);
//   //   final jsonResponse = jsonDecode(data);
//   //   var productData = jsonResponse["para_title"];
//   //   // print(productData);
//   //   para_title = List.from(productData)
//   //       .map<ParaTitleModel>((e) => ParaTitleModel.fromJson(e))
//   //       .toList();
//   //   setState(() {
//   //   });
//   // }
//
// }

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../../../constants/app_style/color.dart';
import '../../../../../constants/app_style/font.dart';
import 'grid_view_all.dart';
import '../../../model/category_model/model.dart';

class View extends StatefulWidget {
  const View({Key? key}) : super(key: key);

  @override
  State<View> createState() => _ViewState();
}

class _ViewState extends State<View> {

  Future<List<productmodel>> getdata() async {
    String data = await DefaultAssetBundle.of(context).loadString("assets/json/product.json");
     List mapdata = jsonDecode(data);
     print(mapdata);
     List<productmodel> product = mapdata.map((e) => productmodel.fromJson(e)).toList();
     return product;
  }

  @override
  void initState() {
    getdata();
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Category", style: fSemiBold.copyWith(
                color: EColor.cBlack,
                fontSize: 15
            ),),
            InkWell(
              onTap: (){
                Get.to(Grid_view_all());
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
                Row(
                  children: [
                    SizedBox(
                      height: 90,
                      width: 350,
                      child: FutureBuilder<List<productmodel>>(
                          future: getdata(),
                          builder: (context, data) {
                            if(data.hasData){
                              List<productmodel> product = data.data!;
                              return ListView.builder(
                                scrollDirection: Axis.horizontal,
                                physics: BouncingScrollPhysics(),
                                itemCount: product.length,
                                  itemBuilder: (context, index) {
                                  return Container(
                                    margin: EdgeInsets.only(
                                      left: 7
                                    ),
                                    child: Column(
                                      children: [
                                        CircleAvatar(
                                          backgroundColor: Colors.white,
                                          radius: 35,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Center(
                                              child: Image.asset(
                                                product[index].image!
                                                ),
                                            ),
                                          ),
                                        ),
                                        Text(product[index].name!, style: fRagular.copyWith(
                                            fontSize: 10
                                        ),),
                                      ],
                                    ),
                                  );
                                  },);
                            } else{
                              return CircularProgressIndicator();
                            }
                          },

                      ),
                    ),
                  ],
                ),


                // Column(
                //   children: [
                //     CircleAvatar(
                //       backgroundColor: Colors.white,
                //       radius: 35,
                //       child: Padding(
                //         padding: const EdgeInsets.all(8.0),
                //         child: Center(child: Image.asset(
                //             "assets/images/basket-full-vegetables.png"),
                //         ),
                //       ),
                //     ),
                //     Text("Grocery", style: fRagular.copyWith(
                //         fontSize: 10
                //     ),),
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


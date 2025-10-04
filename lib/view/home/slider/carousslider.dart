// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:enough_grocery/view/common_widget/app_style/color.dart';
// import 'package:flutter/material.dart';
// import 'package:sizer/sizer.dart';
//
// class CarousSlider extends StatefulWidget {
//   const CarousSlider({Key? key}) : super(key: key);
//
//   @override
//   State<CarousSlider> createState() => _CarousSliderState();
// }
//
// class _CarousSliderState extends State<CarousSlider> {
//   @override
//   Widget build(BuildContext context) {
//     return Sizer(builder: (context, orientation, deviceType) {
//
//       List imageList =[
//         { "id":1,"image_path": "assets/images/Group 3269.png" },
//         { "id":1,"image_path": "assets/images/Group 3269.png" },
//
//       ];
//       final CarouselController carouselController = CarouselController();
//       int currentIndex = 0;
//
//       return Container(
//         child: Column(
//           children: [
//             InkWell(
//               onTap: (){},
//               child: CarouselSlider(
//                 items: imageList.map(
//                     (item) => Image.asset(item["image_path"]),
//                 ).toList(),
//                 carouselController: carouselController,
//                 options: CarouselOptions(
//                   height: 100,
//                   scrollPhysics: BouncingScrollPhysics(),
//                   autoPlay: true,
//                   aspectRatio: 2,
//                   viewportFraction: 1,
//                   onPageChanged: (
//                   (index, reason) {
//                     setState(() {
//                       currentIndex = index;
//                     });
//                   }
//                   )
//                 ),
//               ),
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: imageList.asMap().entries.map((entry) {
//                 print(entry);
//                 print(entry.key);
//                 return GestureDetector(
//                     onTap: () => carouselController.animateToPage(entry.key),
//                     child: Container(
//                       width: currentIndex == entry.key ? 17 : 7,
//                       height: 7,
//                       margin:
//                       EdgeInsets.symmetric(
//                           horizontal: 3),
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(10),
//                         color: currentIndex == entry.key
//                             ? EColor.primary
//                             : EColor.cBlack,
//                       ),
//                     ),
//
//                 );
//               }).toList()
//             ),
//           ],
//         ),
//       );
//       },
//     );
//   }
// }

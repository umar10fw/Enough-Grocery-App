import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../../constants/app_style/color.dart';

class Carous_Slider extends StatefulWidget {
  const Carous_Slider({Key? key}) : super(key: key);

  @override
  State<Carous_Slider> createState() => _Carous_SliderState();
}

class _Carous_SliderState extends State<Carous_Slider> {

  int _currentIndex = 0;
  List<int> cardList = [1,2,3,4];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
              autoPlay: true,
              height: 100,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              pauseAutoPlayOnTouch: true,
              // enlargeCenterPage: true,
              viewportFraction: 1,
              onPageChanged: (index, reason) {
                setState(() {
                  _currentIndex = index;
                });
              }),
          items: cardList.map((item) {
            return ItemCard(title: item.toString());
          }).toList(),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: map<Widget>(cardList, (index, url) {
            return Container(
              width: _currentIndex == index ? 30 : 10.0,
              height: 10.0,
              margin:
              EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: _currentIndex == index
                    ? EColor.primary
                    : EColor.grey,
              ),
            );
          }),
        ),

      ],
    );
  }
}
class ItemCard extends StatelessWidget {
  final String title;

  const ItemCard({Key? key,required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 1.h
      ),
        width: MediaQuery.of(context).size.width * 0.9,
      child: Stack(
        children: [
          Container(
              padding: EdgeInsets.only(
                top: 0.2.h,
                left: 5
              ),
              child: Image.asset('assets/images/basket-full-vegetables.png',height: 70,)),
          Image.asset('assets/images/Group 3269.png'),

        ],
      )
    );
  }
}

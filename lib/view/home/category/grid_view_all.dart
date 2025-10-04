import 'package:flutter/material.dart';

import '../../common_widget/app_style/colorfile.dart';
import '../../common_widget/app_style/font.dart';

class Grid_view_all extends StatefulWidget {
  const Grid_view_all({Key? key}) : super(key: key);

  @override
  State<Grid_view_all> createState() => _Grid_view_allState();
}

class _Grid_view_allState extends State<Grid_view_all> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: EColor.primary_home,
      appBar: AppBar(
        backgroundColor: EColor.primary,
        centerTitle: true,
        elevation: 0,
        title: Text("All Categories",style: fBold.copyWith(
            color: EColor.cWhite
        )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: GridView.count(
          crossAxisCount: 3,
          children: List<Widget>.generate(100, (index) {
            return GridTile(
              child:  Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 45,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(child: Image.asset(
                            "assets/images/basket-full-vegetables.png"),
                        ),
                      ),
                    ),
                    Text("Grocery", style: fMedium.copyWith(
                        fontSize: 13
                    ),),
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

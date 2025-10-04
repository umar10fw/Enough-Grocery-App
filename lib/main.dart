

import 'package:egrocery/view/common_widget/comn_widget/splash.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'Splash',
    routes: {
      'Splash': (context) => Splash(),
    },
  ));
}


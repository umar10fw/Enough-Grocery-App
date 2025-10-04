

import 'package:egrocery/src/features/authentication/screens/splash_screen/splash.dart';
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


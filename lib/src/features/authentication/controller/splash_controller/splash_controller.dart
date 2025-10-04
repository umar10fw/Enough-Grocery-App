import 'dart:async';

import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';

import '../../screens/getstart_screen/start.dart';

class SplashControllerScreen extends GetxController{
  static SplashControllerScreen get find => Get.find();


  RxBool animate = false.obs;

  Future startAnimation() async {
    await Future.delayed(const Duration(milliseconds: 300));
    animate.value = true;
    Timer(const Duration(seconds: 3), () => Get.to(const Start()));
  }

}
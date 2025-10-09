import 'package:egrocery/src/features/dashboard/screen/homepage/homeScreen.dart';
import 'package:egrocery/src/repository/auth_repository/Authentication_Repository.dart';
import 'package:get/get.dart';

class OtpController extends GetxController{
  static OtpController get instance => Get.find();


  Future<void> verifyOTP(String otp) async {
    var isVerify = await AuthenticationRepository.instance.verifyOTP(otp);
    isVerify ? Get.offAll(HomeScreen()) : Get.back();
  }

}
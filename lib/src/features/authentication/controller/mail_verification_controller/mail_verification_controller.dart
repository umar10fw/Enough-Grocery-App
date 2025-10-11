import 'package:egrocery/src/repository/auth_repository/Authentication_Repository.dart';
import 'package:get/get.dart';

class MailVerificationController extends GetxController{
  // static MailVerificationController get instance => Get.find();

  @override
  void onInit(){
    super.onInit();
    sendVerificationEmail();
  }

  void sendVerificationEmail() async {
    try{
      await AuthenticationRepository.instance.sendEmailVerification();
    } catch(e){
      printError(info: e.toString());
    }
  }


  void setTimerForAutoRedirect() {}
  void manualCheckEmailVerificationStatus() {}

}



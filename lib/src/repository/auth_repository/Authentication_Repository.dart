import 'package:egrocery/src/repository/auth_repository/exception/signup_email_password_failure.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

import '../../features/authentication/screens/getstart_screen/getstart.dart';
import '../../features/dashboard/screen/homepage/homeScreen.dart';

class AuthenticationRepository extends GetxController{
  static AuthenticationRepository get instance => Get.find();

  final _auth = FirebaseAuth.instance;
  late final Rx<User?> firebaseUser;

  @override
  void onReady(){
    firebaseUser = Rx<User?>(_auth.currentUser);
    firebaseUser.bindStream(_auth.userChanges());
    ever(firebaseUser, _setInitialScreen);
  }

  _setInitialScreen(User? user){
    user == null ? Get.offAll(()=> const GetStart()) : Get.offAll(()=> const HomeScreen());
  }

  Future<void> createUserWithEmailAndPassword(String email, String password) async {
    try{
      await _auth.createUserWithEmailAndPassword(email: email, password: password);
      firebaseUser.value != null
          ? Get.offAll(()=> const HomeScreen())
          : Get.offAll(()=> const GetStart());
    } on FirebaseAuthException catch(e){
      final ex = SignupEmailPasswordFailure.code(e.code);
      print("Exception ${ex.message}");
      throw ex;
    } catch (_){}
  }
  Future<void> loginUserWithEmailAndPassword(String email, String password) async {
    try{
      await _auth.signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch(e){
      final ex = SignupEmailPasswordFailure.code(e.code);
      print("Exception ${ex.message}");
      throw ex;
    } catch (_){}
  }

  Future<void> logOut() async => await _auth.signOut();

}
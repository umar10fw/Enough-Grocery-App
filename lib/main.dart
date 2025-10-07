import 'package:egrocery/firebase_options.dart';
import 'package:egrocery/src/features/authentication/screens/splash_screen/splash.dart';
import 'package:egrocery/src/repository/auth_repository/Authentication_Repository.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform).then(
    (value) => Get.put(AuthenticationRepository()),
  );
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'Splash',
    routes: {
      'Splash': (context) => CircularProgressIndicator(),
    },
  ));
}

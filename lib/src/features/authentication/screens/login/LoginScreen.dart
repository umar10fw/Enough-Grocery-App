// import 'package:egrocery/src/features/authentication/screens/singup/register.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:sizer/sizer.dart';
//
// import '../../../../common_widget/btn2.dart';
// import '../../../../common_widget/btn3.dart';
// import '../../../../constants/app_style/color.dart';
// import '../../../../constants/app_style/font.dart';
// import '../../../dashboard/screen/homepage/homeScreen.dart';
// import '../forgot/forgotpas.dart';
//
// class LoginScreen extends StatefulWidget {
//   const LoginScreen({Key? key}) : super(key: key);
//
//   @override
//   State<LoginScreen> createState() => _LoginScreenState();
// }
//
// class _LoginScreenState extends State<LoginScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Sizer(builder: (context, orientation, deviceType) {
//       return Scaffold(
//         appBar: AppBar(
//           elevation: 0,
//           backgroundColor: EColor.primary,
//           centerTitle: true,
//           title: Text("Login",style: fBold.copyWith(
//             color: EColor.cWhite
//           )),
//         ),
//           body: SafeArea(
//             child: SingleChildScrollView(
//               child: Container(
//                 child: Column(
//                   children: [
//                    Center(
//                      child: Container(
//                        padding: EdgeInsets.only(top: 2.h),
//                        child: Column(
//                          children: [
//                            Image.asset('assets/images/bage.png',height: 15.h,),
//                            SizedBox(height: 1.h,),
//                            Text('Enough Grocery',style: fBold.copyWith(
//                              fontSize: 17,
//                              color: EColor.primary,
//                            ),),
//                            SizedBox(height: 1.h,),
//                            Text('A Place for Your grocery',style: fRagular.copyWith(
//                              fontSize: 13,
//                              color: EColor.cBlack,
//                            ),),
//                            // SizedBox(
//                            //   height: 5.h,
//                            // ),
//                          ],
//                        ),
//                      ),
//                    ),
//                     SizedBox(height: 3.h,),
//                     Padding(
//                       padding: EdgeInsets.only(
//                           right: 32.h
//                       ),
//                       child: Text('Log in',style: fBold.copyWith(
//                           fontSize: 20,
//                       ),),
//                     ),
//                     SizedBox(height: 2.h,),
//                     Padding(
//                       padding: EdgeInsets.symmetric(
//                         horizontal: 25
//                       ),
//                       child: Row(
//                         children: [
//                           Padding(
//                             padding: EdgeInsets.only(
//                               top: 15,
//                               right: 5
//                             ),
//                             child: Icon(Icons.email,color: EColor.grey,size: 25,),
//                           ),
//                           Expanded(
//                             flex: 1,
//                             child: SizedBox(
//                               height: 40,
//                               child: Padding(
//                                 padding: EdgeInsets.only(left: 5.0,right: 5.0),
//                                 child: TextFormField(
//                                   decoration: InputDecoration(
//                                       focusedBorder: UnderlineInputBorder(
//                                         borderSide: BorderSide(color: EColor.cGreen),
//                                       ),
//                                       enabledBorder: UnderlineInputBorder(
//                                         borderSide: BorderSide(color: Colors.grey),
//                                       ),
//                                       hintText: "Email",
//                                       hintStyle: fRagular.copyWith(
//                                           fontSize: 13,
//                                           color: EColor.grey
//                                       )
//                                     // labelText: text,
//                                     // // hintText: hint,
//                                     // labelStyle: TextStyle(
//                                     //     fontSize: 12,
//                                     //     color: EColor.cGreen
//                                     // ),
//                                     // // prefixIcon: Icon(
//                                     // //   icon,
//                                     // //   size: 16,
//                                     // //   color: EColor.cGreen,
//                                     // // ),
//                                   ),
//                                 ),
//                                 // TextFormField(
//                                 //   // controller: commentController,
//                                 //   // validator: (String value){
//                                 //   //   if(value.isEmpty){
//                                 //   //     // ignore: missing_return
//                                 //   //     return 'Comment cannot be blank.';
//                                 //   //   }
//                                 //   // },
//                                 //   decoration: InputDecoration(
//                                 //       labelText: "Comment",
//                                 //       labelStyle: TextStyle(
//                                 //           fontFamily: 'Montserrat',
//                                 //           fontWeight: FontWeight.bold,
//                                 //           color: Colors.grey),
//                                 //       focusedBorder: UnderlineInputBorder(
//                                 //           borderSide: BorderSide(color: Colors.green))),
//                                 // ),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     SizedBox(height: 2.h,),
//                     Padding(
//                       padding: EdgeInsets.symmetric(
//                           horizontal: 25
//                       ),
//                       child: Row(
//                         children: [
//                           Padding(
//                             padding: EdgeInsets.only(
//                                 top: 15,
//                                 right: 5
//                             ),
//                             child: Icon(Icons.lock_outline,color: EColor.grey,size: 27,),
//                           ),
//                           Expanded(
//                             flex: 1,
//                             child: SizedBox(
//                               height: 40,
//                               child: Padding(
//                                   padding: EdgeInsets.only(left: 5.0,right: 5.0),
//                                   child: TextFormField(
//                                     decoration: InputDecoration(
//                                         focusedBorder: UnderlineInputBorder(
//                                           borderSide: BorderSide(color: EColor.cGreen),
//                                         ),
//                                         enabledBorder: UnderlineInputBorder(
//                                           borderSide: BorderSide(color: Colors.grey),
//                                         ),
//                                         suffixIcon: Icon(Icons.visibility_off_outlined,color: EColor.grey,size: 17,),
//                                         hintText: "Password",
//                                         hintStyle: fRagular.copyWith(
//                                             fontSize: 13,
//                                             color: EColor.grey
//                                         )
//                                       // labelText: text,
//                                       // // hintText: hint,
//                                       // labelStyle: TextStyle(
//                                       //     fontSize: 12,
//                                       //     color: EColor.cGreen
//                                       // ),
//                                       // // prefixIcon: Icon(
//                                       // //   icon,
//                                       // //   size: 16,
//                                       // //   color: EColor.cGreen,
//                                       // // ),
//                                     ),
//                                   ),
//                                 // TextFormField(
//                                 //   // controller: commentController,
//                                 //   // validator: (String value){
//                                 //   //   if(value.isEmpty){
//                                 //   //     // ignore: missing_return
//                                 //   //     return 'Comment cannot be blank.';
//                                 //   //   }
//                                 //   // },
//                                 //   decoration: InputDecoration(
//                                 //       labelText: "Comment",
//                                 //       labelStyle: TextStyle(
//                                 //           fontFamily: 'Montserrat',
//                                 //           fontWeight: FontWeight.bold,
//                                 //           color: Colors.grey),
//                                 //       focusedBorder: UnderlineInputBorder(
//                                 //           borderSide: BorderSide(color: Colors.green))),
//                                 // ),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     Container(
//                       padding: EdgeInsets.only(
//                           right: 3.h
//                       ),
//                       child: Align(
//                         alignment: Alignment.topRight,
//                         child: TextButton(
//                           onPressed: (){
//                             Get.to(ForgotPassword());
//                           },
//                           child: Text("Forgot Password?",style: fMedium.copyWith(
//                             color: EColor.primary,
//                           )),
//                         ),
//                       ),
//                     ),
//                     SizedBox(
//                       height: 1.h,
//                     ),
//                     InkWell(
//                       onTap: (){
//                         Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => HomeScreen()));
//                       },
//                       child: Btn3(
//                         text: "Log in",
//                         color: EColor.primary,
//                       ),
//                     ),
//                     Container(
//                       height: 10.h,
//                       child: Row(
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Container(
//                             color: EColor.grey,
//                             height: 1,
//                             width: 15.h,
//                           ),
//                           SizedBox(
//                             width: 3.w,
//                           ),
//                           Text('OR',style: fBold.copyWith(
//                             color: EColor.grey
//                           ),),
//                           SizedBox(
//                             width: 3.w,
//                           ),
//                           Container(
//                             color: EColor.grey,
//                             height: 1,
//                             width: 15.h,
//                           ),
//                         ],
//                       ),
//                     ),
//                     Btn2(text: "Login with Google",
//                       textcolor: EColor.cBlack,
//                       color: Color.fromARGB(225, 241, 245, 246),
//                       icon: Icons.email_outlined,
//                       iconcolor: EColor.primary,),
//                     SizedBox(
//                       height: 5.h,
//                     ),
//                     InkWell(
//                       onTap: (){
//                         Get.to(Register());
//                         // Get.back();
//                       },
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Text('New to Enough Grocery? ',style: fRagular,),
//                           Text('Register',style: TextStyle(
//                               color: EColor.primary
//                           ),)
//                         ],
//                       ),
//                     ),
//                     SizedBox(
//                       height: 5.h,
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         );
//       },
//     );
//   }
// }
// Widget textfield ( String text,){
//   return TextFormField(
//     decoration: InputDecoration(
//       focusedBorder: UnderlineInputBorder(
//         borderSide: BorderSide(color: EColor.cGreen),
//       ),
//       enabledBorder: UnderlineInputBorder(
//         borderSide: BorderSide(color: Colors.grey),
//       ),
//       hintText: text,
//       hintStyle: fRagular.copyWith(
//         color: EColor.grey
//       )
//       // labelText: text,
//       // // hintText: hint,
//       // labelStyle: TextStyle(
//       //     fontSize: 12,
//       //     color: EColor.cGreen
//       // ),
//       // // prefixIcon: Icon(
//       // //   icon,
//       // //   size: 16,
//       // //   color: EColor.cGreen,
//       // // ),
//     ),
//   );
// }
import 'package:egrocery/src/features/authentication/screens/singup/register.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../../common_widget/btn2.dart';
import '../../../../common_widget/btn3.dart';
import '../../../../constants/app_style/color.dart';
import '../../../../constants/app_style/font.dart';
import '../../../dashboard/screen/homepage/homeScreen.dart';
import '../../controller/signup_controller/signup_controller.dart';
import '../forgot/forgotpas.dart';
import '../../../../repository/auth_repository/Authentication_Repository.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final controller = Get.put(SignupController());
  final _formKey = GlobalKey<FormState>();
  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: EColor.primary,
          centerTitle: true,
          title: Text("Login", style: fBold.copyWith(color: EColor.cWhite)),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Center(
                    child: Container(
                      padding: EdgeInsets.only(top: 2.h),
                      child: Column(
                        children: [
                          Image.asset('assets/images/bage.png', height: 15.h),
                          SizedBox(height: 1.h),
                          Text('Enough Grocery',
                              style: fBold.copyWith(
                                  fontSize: 17, color: EColor.primary)),
                          SizedBox(height: 1.h),
                          Text('A Place for Your grocery',
                              style: fRagular.copyWith(
                                  fontSize: 13, color: EColor.cBlack)),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 3.h),
                  Padding(
                    padding: EdgeInsets.only(right: 32.h),
                    child: Text('Log in',
                        style: fBold.copyWith(fontSize: 20)),
                  ),
                  SizedBox(height: 2.h),

                  // ✅ Email Field
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 15, right: 5),
                          child: Icon(Icons.email, color: EColor.grey, size: 25),
                        ),
                        Expanded(
                          child: TextFormField(
                            controller: controller.email,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: EColor.cGreen),
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                              hintText: "Email",
                              hintStyle: fRagular.copyWith(
                                  fontSize: 13, color: EColor.grey),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Enter your email";
                              }
                              if (!value.contains('@')) {
                                return "Invalid email format";
                              }
                              return null;
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 2.h),

                  // ✅ Password Field
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 15, right: 5),
                          child: Icon(Icons.lock_outline,
                              color: EColor.grey, size: 27),
                        ),
                        Expanded(
                          child: TextFormField(
                            controller: controller.password,
                            obscureText: !_isPasswordVisible,
                            decoration: InputDecoration(
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: EColor.cGreen),
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                              suffixIcon: IconButton(
                                icon: Icon(
                                  _isPasswordVisible
                                      ? Icons.visibility
                                      : Icons.visibility_off_outlined,
                                  color: EColor.grey,
                                  size: 18,
                                ),
                                onPressed: () {
                                  setState(() {
                                    _isPasswordVisible = !_isPasswordVisible;
                                  });
                                },
                              ),
                              hintText: "Password",
                              hintStyle: fRagular.copyWith(
                                  fontSize: 13, color: EColor.grey),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Enter your password";
                              }
                              if (value.length < 6) {
                                return "Password too short";
                              }
                              return null;
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 1.h),

                  // Forgot Password
                  Align(
                    alignment: Alignment.topRight,
                    child: TextButton(
                      onPressed: () => Get.to(() => const ForgotPassword()),
                      child: Text("Forgot Password?",
                          style:
                          fMedium.copyWith(color: EColor.primary)),
                    ),
                  ),

                  SizedBox(height: 1.h),

                  // ✅ Login Button
                  InkWell(
                    onTap: () async {
                      if (_formKey.currentState!.validate()) {
                        final email = controller.email.text.trim();
                        final password = controller.password.text.trim();

                        if (email.isEmpty || password.isEmpty) {
                          Get.snackbar("Error", "Email and password cannot be empty");
                          return;
                        }

                        await AuthenticationRepository.instance
                            .loginUserWithEmailAndPassword(email, password);
                      }
                    },
                    child: Btn3(
                      text: "Log in",
                      color: EColor.primary,
                    ),
                  ),

                  // Divider
                  SizedBox(height: 2.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(color: EColor.grey, height: 1, width: 15.h),
                      SizedBox(width: 3.w),
                      Text('OR', style: fBold.copyWith(color: EColor.grey)),
                      SizedBox(width: 3.w),
                      Container(color: EColor.grey, height: 1, width: 15.h),
                    ],
                  ),

                  // Google Login Button
                  SizedBox(height: 3.h),
                  Btn2(
                    text: "Login with Google",
                    textcolor: EColor.cBlack,
                    color: const Color.fromARGB(225, 241, 245, 246),
                    icon: Icons.email_outlined,
                    iconcolor: EColor.primary,
                  ),

                  // Register
                  SizedBox(height: 5.h),
                  InkWell(
                    onTap: () => Get.to(() => const Register()),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('New to Enough Grocery? ', style: fRagular),
                        Text('Register',
                            style: TextStyle(color: EColor.primary)),
                      ],
                    ),
                  ),
                  SizedBox(height: 5.h),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}

import 'package:egrocery/src/features/authentication/model/user_model/user_model.dart';
import 'package:egrocery/src/features/authentication/model/profile_controller/profile_controller.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import '../../../constants/app_style/color.dart';
import '../../../constants/app_style/font.dart';

class UpdateProfileScreen extends StatelessWidget {
  const UpdateProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ProfileController());

    // 👇 Dynamically get the logged-in Firebase user’s email
    final currentUser = FirebaseAuth.instance.currentUser;
    final String? currentUserEmail = currentUser?.email;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Edit Profile', style: TextStyle(color: Colors.black)),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: currentUserEmail == null
          ? const Center(
        child: Text("No user logged in. Please log in first."),
      )
          : SingleChildScrollView(
        padding: const EdgeInsets.all(10),
        child: FutureBuilder<UserModel?>(
          future: controller.getUserDetails(currentUserEmail),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            }

            if (snapshot.hasError) {
              return Center(child: Text('Error: ${snapshot.error}'));
            }

            if (!snapshot.hasData || snapshot.data == null) {
              return const Center(child: Text("No user data found"));
            }

            final user = snapshot.data!;
            final email = TextEditingController(text: user.email);
            final fullName = TextEditingController(text: user.fullName);
            final phoneNo = TextEditingController(text: user.phoneNo);
            final password = TextEditingController(text: user.password);

            return Column(
              children: [
                SizedBox(height: 5.h),
                const CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/images/bgimg.jpg'),
                ),
                SizedBox(height: 5.h),

                // ✅ FORM
                Form(
                  child: Column(
                    children: [
                      buildTextField(Icons.person, "User Name", fullName),
                      SizedBox(height: 2.h),
                      buildTextField(Icons.email, "Email", email),
                      SizedBox(height: 2.h),
                      buildTextField(Icons.phone_android, "Phone", phoneNo),
                      SizedBox(height: 2.h),
                      buildTextField(Icons.lock_outline, "Password", password, obscure: true),
                      SizedBox(height: 5.h),

                      // ✅ Update Button
                      Padding(
                        padding: const EdgeInsets.all(19),
                        child: SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () async {
                              final updatedUser = UserModel(
                                id: user.id, // 👈 Required for Firestore update
                                email: email.text.trim(),
                                fullName: fullName.text.trim(),
                                phoneNo: phoneNo.text.trim(),
                                password: password.text.trim(),
                              );

                              await controller.updateUserRecord(updatedUser);
                              Get.snackbar(
                                "Success",
                                "Profile Updated Successfully",
                                backgroundColor: Colors.green.withOpacity(0.1),
                                colorText: Colors.green,
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.yellow,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 14),
                            ),
                            child: const Text(
                              "Edit Profile",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget buildTextField(IconData icon, String hint, TextEditingController controller, {bool obscure = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15, right: 5),
            child: Icon(icon, color: EColor.grey, size: 25),
          ),
          Expanded(
            child: SizedBox(
              height: 40,
              child: TextFormField(
                controller: controller,
                obscureText: obscure,
                decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: EColor.cGreen),
                  ),
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  hintText: hint,
                  hintStyle: fRagular.copyWith(fontSize: 13, color: EColor.grey),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

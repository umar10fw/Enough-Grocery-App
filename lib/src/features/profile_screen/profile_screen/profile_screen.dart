import 'package:egrocery/src/features/profile_screen/profile_screen/update_profile_screen.dart';
import 'package:egrocery/src/features/profile_screen/profile_screen/widget_screen/setting_feature_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> profileOptions = [
      {'icon': Icons.settings, 'title': 'Settings'},
      {'icon': Icons.credit_card, 'title': 'Billing Details'},
      {'icon': Icons.group, 'title': 'User Management'},
      {'icon': Icons.info_outline, 'title': 'Information'},
      {'icon': Icons.logout, 'title': 'Logout', 'showEndIcon': false},
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text('Profile', style: TextStyle(color: Colors.black)),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(height: 20),

            /// 🟡 Profile Image with Edit Icon
            Stack(
              alignment: Alignment.center,
              children: [
                const CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/images/bgimg.jpg'),
                ),
                Positioned(
                  bottom: 0,
                  right: 10,
                  child: Container(
                    height: 32,
                    width: 32,
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 2),
                    ),
                    child: IconButton(
                      padding: EdgeInsets.zero,
                      icon: const Icon(Icons.edit, size: 18, color: Colors.black),
                      onPressed: () {
                        // Handle profile image change
                      },
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 12),

            /// Name and Email
            const Text(
              "Coding with T",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            const Text(
              "superAdmin@codingwitht.com",
              style: TextStyle(color: Colors.grey),
            ),

            const SizedBox(height: 15),

            /// Edit Profile Button
            ElevatedButton(
              onPressed: () {
                Get.to(UpdateProfileScreen());
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.yellow,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                padding:
                const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
              ),
              child: const Text(
                "Edit Profile",
                style:
                TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),

            const SizedBox(height: 25),

            /// Dynamic Profile Option List
            Column(
              children: profileOptions.map((option) {
                return ProfileOptionTile(
                  icon: option['icon'],
                  title: option['title'],
                  showEndIcon: option['showEndIcon'] ?? true,
                  onTap: () {
                    // handle navigation or action
                    if (option['title'] == 'Logout') {
                      // Logout action
                    } else {
                      // Navigate to other pages
                    }
                  },
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}

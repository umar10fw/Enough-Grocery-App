import 'package:egrocery/src/features/dashboard/screen/homepage/popular/popular_view.dart';
import 'package:egrocery/src/features/dashboard/screen/homepage/slider/carous_slider.dart';
import 'package:egrocery/src/repository/auth_repository/Authentication_Repository.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../../../constants/app_style/colorfile.dart';
import '../../../../constants/app_style/font.dart';
import '../../../../constants/app_style/style.dart';
import 'recomnmend/recomend_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return Scaffold(
          backgroundColor: EColor.primary_home,
          appBar: AppBar(
            automaticallyImplyLeading: false,
            elevation: 0,
            backgroundColor: EColor.homebgc,
            centerTitle: false,
            leading: IconButton(
              onPressed: () {},
              icon: Image.asset("assets/images/Icon.png", height: 4.h),
            ),
            title: Text(
              "Enough Grocery",
              style: fBold.copyWith(color: EColor.primary, fontSize: 18),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Image.asset(
                          "assets/images/Group 3271.png",
                          height: 3.h,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: Image.asset(
                          "assets/images/Icon awesome-bell.png",
                          height: 3.h,
                        )),
                    IconButton(
                        onPressed: () {
                          AuthenticationRepository.instance.logOut();
                        },
                        icon: Icon(Icons.logout)
                    ),
                  ],
                ),
              )
            ],
          ),
          body: SingleChildScrollView(
            child: Column(children: [
              const Carous_Slider(),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        style: fRagular.copyWith(
                          color: EColor.grey,
                          fontSize: 15,
                        ),
                        controller: TextEditingController(),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: EColor.cWhite,
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 15,
                          ),
                          prefixIcon: const IconTheme(
                            data: IconThemeData(
                              color: Colors.grey,
                            ),
                            child: Icon(Icons.search),
                          ),
                          suffixIcon: InkWell(
                            onTap: () {},
                            child: const IconTheme(
                              data: IconThemeData(
                                color: Colors.black54,
                              ),
                              child: Icon(
                                Icons.mic,
                              ),
                            ),
                          ),
                          hintText: 'Search what you want',
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(kBorderRadius),
                            borderSide: BorderSide(color: EColor.primary_home),
                          ),
                          errorBorder: KInputBorder,
                          disabledBorder: KInputBorder,
                          focusedErrorBorder: KInputBorder,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(kBorderRadius),
                            borderSide: BorderSide(color: EColor.primary_home),
                          ),
                          hintStyle: fRagular.copyWith(
                            color: EColor.grey,
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 49,
                      width: 49,
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(kBorderRadius),
                        color: EColor.cWhite,
                      ),
                      child: InkWell(
                        onTap: () {},
                        child: IconButton(
                          onPressed: () {},
                          icon: Image.asset('assets/images/filter.png'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                // child: View()
              ),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: Popular_view()),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Recommend()),
            ]),
          ));
    });
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:sizer/sizer.dart';

import '../common_widget/app_style/color.dart';
import '../common_widget/app_style/font.dart';
import '../common_widget/comn_widget/btn4.dart';
import 'otppassword.dart';

class OTP extends StatefulWidget {
  const OTP({Key? key}) : super(key: key);

  @override
  State<OTP> createState() => _OTPState();
}

class _OTPState extends State<OTP> {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: EColor.primary,
            centerTitle: true,
            title: Text("Verification",
                style: fBold.copyWith(color: EColor.cWhite)),
          ),
          backgroundColor: EColor.cWhite,
          body: SingleChildScrollView(
            child: Center(
              child: Container(
                padding: EdgeInsets.only(top: 7.h),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/lock.png'),
                    Text(
                      'OTP Verification',
                      style: fBold.copyWith(fontSize: 17),
                    ),
                    Container(
                      // margin: EdgeInsets.all(10),
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 20),
                      child: Text(
                        'We will send you a one time password to this mobile number',
                        textAlign: TextAlign.center,
                        style: fRagular.copyWith(fontSize: 16, height: 1.5),
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      "Enter Mobile Number",
                      style:
                          fSemiBold.copyWith(color: EColor.grey, fontSize: 16),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: EColor.grey),
                      ),
                      child: SizedBox(
                        height: 7.h,
                        width: 62.w,
                        child: InternationalPhoneNumberInput(
                          onInputChanged: (PhoneNumber number) {
                            print(number.phoneNumber);
                          },
                          onInputValidated: (bool value) {
                            print(value);
                          },
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Required Number!';
                            }
                            return null;
                          },
                          ignoreBlank: false,
                          autoValidateMode: AutovalidateMode.disabled,
                          selectorTextStyle: const TextStyle(
                            color: Colors.black,
                          ),
                          selectorConfig: const SelectorConfig(
                            selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                            setSelectorButtonAsPrefixIcon: false,
                            // leadingPadding: 0,
                            showFlags: true,
                            //trailingSpace: true,
                          ),
                          initialValue: PhoneNumber(isoCode: 'PK'),
                          // textFieldController: _number,
                          formatInput: false,
                          cursorColor: EColor.cBlack,
                          keyboardType: const TextInputType.numberWithOptions(
                              signed: true, decimal: true),
                          inputDecoration: const InputDecoration(
                            hintText: "123456789",
                            hintStyle: TextStyle(
                                color: EColor.cBlack, letterSpacing: 2),
                            enabledBorder: UnderlineInputBorder(
                              //borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide(
                                color: EColor.cWhite,
                                width: 0.5,
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              //borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide(
                                color: EColor.cWhite,
                                width: 0.6,
                              ),
                            ),
                            floatingLabelAlignment:
                                FloatingLabelAlignment.center,
                          ),
                          textStyle: const TextStyle(color: Colors.black),
                          onSaved: (PhoneNumber number) {
                            print('On Saved: $number');
                          },
                        ),
                      ),
                    ),
                    // OutlinedButton(
                    //     onPressed: (){
                    //       Navigator.push(
                    //           context,
                    //           MaterialPageRoute(
                    //               builder: (context) => const OtpPassword()));
                    //     },
                    //     child: const Text('Next')),
                    SizedBox(
                      height: 10.h,
                    ),
                    InkWell(
                      onTap: () {
                        Get.to(OtpPassword());
                        // Get.back();
                      },
                      child: Btn4(
                        text: "Send",
                        color: EColor.primary,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

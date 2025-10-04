



import '../app_style/colorfile.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../app_style/dimension.dart';

class EditText extends StatefulWidget {
  TextEditingController? textController;
  String? lable;
  bool? suggestion;
  bool? autocorrect;
  bool? obscure;
  Widget? leadingIcon;
  String? hint;
  Function()? suffixIconOnpress;
  FormFieldValidator formvalidate;
  IconData? icon;
   EditText({
    Key? key,
    this.textController,
    this.lable,
    this.suggestion,
    this.autocorrect,
    this.obscure,
    this.suffixIconOnpress,
    required this.hint,
    required this.formvalidate,
    this.leadingIcon,
    this.icon,
  }) : super(key: key);
  @override
  State<EditText> createState() => _EditTextState();
}

class _EditTextState extends State<EditText> {
   bool obscure = false;
  @override
  Widget build(BuildContext context) {
    return   SizedBox(
              height: 8.h,
              width: double.infinity,
              child: TextFormField(
              // controller: ,
                controller: widget.textController,
                validator:widget.formvalidate,
                cursorColor: Color(0xff424242),
                obscureText: obscure,
                enableSuggestions: false,
                autocorrect: false,
                decoration: InputDecoration(
                  prefixIcon: widget.leadingIcon,
                  hintStyle: TextStyle(color: EColor.color_black),
                    labelText: widget.lable,
                    hintText: widget.hint,
                    labelStyle:  TextStyle(
                        color: EColor.color_black,
                        fontSize: Dimensions.fontSize12,
                        fontFamily: 'productsan'),
                    enabledBorder: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide:  const BorderSide(
                        color: EColor.greyColor,
                        width: 0.5,
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(
                        color: EColor.app_color,
                        width: 0.6,
                      ),
                    ),
                    errorBorder:  UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(
                        color: EColor.redColor,
                        width: 0.6,
                      ),
                    ),
                    contentPadding:  EdgeInsets.symmetric(vertical: Dimensions.fontSize12,horizontal: Dimensions.border13),
                    suffixIcon: GestureDetector(
                      onTap: widget.suffixIconOnpress,
                      child: Icon(
                       widget.icon,
                        color: EColor.color_black,
                      ),
                    ),
                    // filled: true,
                    fillColor: const Color(0xffF2F2F3),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(Dimensions.fontSize20),
                      gapPadding: 5.0,
                    )),
                style: const TextStyle(
                    color:Colors.black, fontFamily: 'productsan'),
              ),
            );

  }
}
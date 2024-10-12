import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:med_app/core/theme/color_palette.dart';
import 'package:med_app/core/theme/text_styles.dart';

class MyTextFormField extends StatelessWidget {
  MyTextFormField(
      {super.key,
      this.isObsecure,
      required this.hintText,
      this.backgroundColor,
      this.hintTextStyle,
      this.suffixIcon});

  bool? isObsecure;
  String hintText;
  Color? backgroundColor;
  TextStyle? hintTextStyle;
  Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: MyTextStyles.fontInter16DarkGreyMedium,
      obscureText: isObsecure ?? false,
      decoration: InputDecoration(
        suffixIcon: suffixIcon ?? null,
        suffixIconColor: ColorPalette.darkGrey,
        hintText: hintText,
        hintStyle: hintTextStyle ?? MyTextStyles.fontInter14GreyMedium,
        filled: true,
        fillColor: backgroundColor ?? ColorPalette.lighterGrey,
        contentPadding: EdgeInsets.symmetric(vertical: 18.h, horizontal: 20.w),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(width: 1.3, color: ColorPalette.mainBlue),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(width: 1.3, color: ColorPalette.lightGrey),
        ),
      ),
    );
  }
}

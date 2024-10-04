import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:med_app/core/theme/color_palette.dart';

class TextStyles {
  static TextStyle font24w700Black = TextStyle(
      color: Colors.black, fontSize: 24.sp, fontWeight: FontWeight.w900);

  static TextStyle fontInter32w700Blue = TextStyle(
      fontFamily: 'Inter',
      color: ColorPalette.accentColor,
      fontSize: 32.sp,
      fontWeight: FontWeight.w700);
  static TextStyle fontInter11w400Grey = TextStyle(
      fontFamily: 'Inter',
      color: ColorPalette.bodyTextGrey,
      fontSize: 11.sp,
      fontWeight: FontWeight.w400);
  static TextStyle fontInter16w600White = TextStyle(
      fontFamily: 'Inter',
      color: Colors.white,
      fontSize: 16.sp,
      fontWeight: FontWeight.w600);
}

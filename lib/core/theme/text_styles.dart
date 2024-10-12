import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:med_app/core/theme/color_palette.dart';
import 'package:med_app/core/theme/myFontWeights.dart';

class TextStyles {
  static TextStyle font24BlackBoldest = TextStyle(
      color: Colors.black, fontSize: 24.sp, fontWeight: MyFontWeights.boldest);

  static TextStyle fontInter32BlueBold = TextStyle(
      fontFamily: 'Inter',
      color: ColorPalette.accentColor,
      fontSize: 32.sp,
      fontWeight: MyFontWeights.bold);
  static TextStyle fontInter11GreyRegular = TextStyle(
      fontFamily: 'Inter',
      color: ColorPalette.bodyTextGrey,
      fontSize: 11.sp,
      fontWeight: MyFontWeights.regular);
  static TextStyle fontInter16WhiteSemiBold = TextStyle(
      fontFamily: 'Inter',
      color: Colors.white,
      fontSize: 16.sp,
      fontWeight: MyFontWeights.semiBold);
}

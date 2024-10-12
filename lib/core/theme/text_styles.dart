import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:med_app/core/theme/color_palette.dart';
import 'package:med_app/core/theme/myFontWeights.dart';

class MyTextStyles {
  static TextStyle fontInter32BlueBold = TextStyle(
      fontFamily: 'Inter',
      color: ColorPalette.mainBlue,
      fontSize: 32.sp,
      fontWeight: MyFontWeights.bold);
  static TextStyle font24BlackBoldest = TextStyle(
      color: Colors.black, fontSize: 24.sp, fontWeight: MyFontWeights.boldest);
  static TextStyle fontInter24BlueBold = TextStyle(
      fontFamily: 'Inter',
      color: ColorPalette.mainBlue,
      fontSize: 24.sp,
      fontWeight: MyFontWeights.bold);
  static TextStyle fontInter16WhiteSemiBold = TextStyle(
      fontFamily: 'Inter',
      color: Colors.white,
      fontSize: 16.sp,
      fontWeight: MyFontWeights.semiBold);
  static TextStyle fontInter16DarkGreyMedium = TextStyle(
      fontFamily: 'Inter',
      color: ColorPalette.darkGrey,
      fontSize: 16.sp,
      fontWeight: MyFontWeights.medium);
  static TextStyle fontInter14DarkGreyRegular = TextStyle(
      fontFamily: 'Inter',
      color: ColorPalette.darkGrey,
      fontSize: 14.sp,
      fontWeight: MyFontWeights.regular);
  static TextStyle fontInter14GreyMedium = TextStyle(
      fontFamily: 'Inter',
      color: ColorPalette.grey,
      fontSize: 14.sp,
      fontWeight: MyFontWeights.medium);
  static TextStyle fontInter11DarkGreyRegular = TextStyle(
      fontFamily: 'Inter',
      color: ColorPalette.darkGrey,
      fontSize: 11.sp,
      fontWeight: MyFontWeights.regular);
}

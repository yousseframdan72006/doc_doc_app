import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/theming/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles {
  static TextStyle font24Black700weight = TextStyle(
    fontSize: 24.sp,
    color: Colors.black,
    fontWeight: FontWeight.w700,
  );
  static TextStyle font32BlueBold = TextStyle(
    fontSize: 32.sp,
    color: ColorsManger.mainBlue,
    fontWeight: FontWeight.bold,
  );
  static TextStyle font24BlueBold = TextStyle(
    fontSize: 24.sp,
    color: ColorsManger.mainBlue,
    fontWeight: FontWeight.bold,
  );
  static TextStyle font13grayRegular = TextStyle(
    fontSize: 13.sp,
    color: ColorsManger.gray,
    fontWeight: FontWeight.normal,
  );
  static TextStyle font14gray400weight = TextStyle(
    fontSize: 14.sp,
    color: ColorsManger.gray,
    fontWeight: FontWeight.w400,
  );
  static TextStyle font16WhiteSemiBold = TextStyle(
    fontSize: 16.sp,
    color: Colors.white,
    fontWeight: FontWeight.w600,
  );
  static TextStyle font14LightGray500weight = TextStyle(
    fontSize: 14.sp,
    color: ColorsManger.lightGray,
    fontWeight: FontWeight.w500,
  );
  static TextStyle font14DarkBlue500weight = TextStyle(
    fontSize: 14.sp,
    color: ColorsManger.darkBlue,
    fontWeight: FontWeight.bold,
  );
  static TextStyle font14Blue600weight = TextStyle(
    fontSize: 14.sp,
    color: ColorsManger.mainBlue,
    fontWeight: FontWeight.w600,
  );
}

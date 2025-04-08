import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class AppSize {
  static const double xSmall = 4;
  static const double small = 8;
  static const double medium = 12;
  static const double mediumLarge = 16;
  static const double large = 20;
  static const double xLarge = 24;
  static const double xxLarge = 32;
  static const double xxxLarge = 64;
  static const double padding = 25;
  static double screenWidth(BuildContext context) =>
      MediaQuery.of(context).size.width;
  static double screenHeight(BuildContext context) =>
      MediaQuery.of(context).size.height;
}

abstract class VSpace {
  static final Widget veryTiny = SizedBox(height: AppSize.xSmall.h);
  static final Widget tiny = SizedBox(height: AppSize.small.h);
  static final Widget small = SizedBox(height: AppSize.medium.h);
  static final Widget medium = SizedBox(height: AppSize.mediumLarge.h);
  static final Widget large = SizedBox(height: AppSize.xxLarge.h);
  static final Widget xLarge = SizedBox(height: 42.h);
  static final Widget massive = SizedBox(height: AppSize.xxxLarge.h);
}

abstract class HSpace {
  static final Widget veryTiny = SizedBox(width: AppSize.xSmall.w);
  static final Widget tiny = SizedBox(width: AppSize.small.w);
  static final Widget small = SizedBox(width: AppSize.medium.w);
  static final Widget medium = SizedBox(width: AppSize.mediumLarge.w);
  static final Widget large = SizedBox(width: AppSize.xxLarge.w);
  static final Widget massive = SizedBox(width: AppSize.xxxLarge.w);
}

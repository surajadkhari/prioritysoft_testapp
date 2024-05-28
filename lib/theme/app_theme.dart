import 'package:flutter/material.dart';
import 'package:priorityshoft_testapp/const/app_color_const.dart';
import 'package:priorityshoft_testapp/const/app_fonts.dart';

class AppTheme {
  static ThemeData light() {
    return ThemeData(
      
        fontFamily: AppfontResources.kappFont,
        appBarTheme:
            AppBarTheme(backgroundColor: AppColorResource.kappWhiteColor),
        scaffoldBackgroundColor: AppColorResource.kappWhiteColor);
  }
}

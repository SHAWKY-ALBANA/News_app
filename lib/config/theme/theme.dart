import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/colors_manager/colors_manager.dart';

abstract class ThemeManager {
  static final ThemeData light = ThemeData(
    scaffoldBackgroundColor: ColorsManager.white,
    appBarTheme: AppBarTheme(
      backgroundColor: ColorsManager.white,
      foregroundColor: ColorsManager.black,
      iconTheme: IconThemeData(color: ColorsManager.black),
      centerTitle: true,
      titleTextStyle: GoogleFonts.inter(
        fontSize: 20.sp,
        fontWeight: FontWeight.bold,
        color: ColorsManager.black,
      ),
    ),
    drawerTheme: DrawerThemeData(backgroundColor: ColorsManager.black),
    textTheme: TextTheme(
        headlineMedium: GoogleFonts.inter(
          fontSize: 24.sp,
          fontWeight: FontWeight.bold,
          color: ColorsManager.black,
        ),
        headlineSmall: GoogleFonts.inter(
          fontSize: 20.sp,
          fontWeight: FontWeight.bold,
          color: ColorsManager.white,
        ),
        titleMedium: GoogleFonts.inter(
          fontSize: 24.sp,
          fontWeight: FontWeight.w500,
          color: ColorsManager.white,
        )
    ),
    iconTheme: IconThemeData(
        color: ColorsManager.black
    ),

  );
  static final ThemeData dark = ThemeData(
    scaffoldBackgroundColor: ColorsManager.black,
    appBarTheme: AppBarTheme(
      backgroundColor: ColorsManager.black,
      foregroundColor: ColorsManager.white,
      iconTheme: IconThemeData(color: ColorsManager.white),
      centerTitle: true,
      titleTextStyle: GoogleFonts.inter(
        fontSize: 20.sp,
        fontWeight: FontWeight.bold,
        color: ColorsManager.white,
      ),
    ),
    drawerTheme: DrawerThemeData(backgroundColor: ColorsManager.black),
    textTheme: TextTheme(
      headlineMedium: GoogleFonts.inter(
        fontSize: 24.sp,
        fontWeight: FontWeight.bold,
        color: ColorsManager.black,
      ),
      headlineSmall: GoogleFonts.inter(
        fontSize: 20.sp,
        fontWeight: FontWeight.bold,
        color: ColorsManager.white,
      ),
      titleMedium: GoogleFonts.inter(
        fontSize: 24.sp,
        fontWeight: FontWeight.w500,
        color: ColorsManager.white,
      )
    ),
    iconTheme: IconThemeData(
      color: ColorsManager.white
    ),
  );
}

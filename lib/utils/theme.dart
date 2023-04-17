// copyright (c) 2023 Andrew Setyawan
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'const.dart';

final appBarTheme = AppBarTheme(centerTitle: false, elevation: 0);

// Light Theme Data
ThemeData lightThemeData(BuildContext context) {
  return ThemeData.light().copyWith(
    primaryColor: mPrimaryColor,
    scaffoldBackgroundColor: mContentColorDarkTheme,
    appBarTheme: appBarTheme,
    iconTheme: IconThemeData(color: mContentColorLightTheme),
    colorScheme: ColorScheme.light(
      primary: mPrimaryColor,
      secondary: mSecondaryColor,
      error: mErrorColor,
    ),
    textTheme: GoogleFonts.interTextTheme(Theme.of(context).textTheme)
        .apply(bodyColor: mContentColorLightTheme),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.white.withOpacity(0.70), //MAYBE NOT USED
      selectedItemColor: mPrimaryColor,
      unselectedItemColor: Colors.purple, //MNU mContentColorLightTheme
      selectedIconTheme: IconThemeData(color: mPrimaryColor),
      showSelectedLabels: true, //value is false
      //showunSelectedLabels: false,
    ),
  );
}

// Dark Theme Data
ThemeData darkThemeData(BuildContext context) {
  return ThemeData.dark().copyWith(
    primaryColor: mPrimaryColor,
    scaffoldBackgroundColor: mContentColorLightTheme,
    appBarTheme: appBarTheme,
    iconTheme: IconThemeData(color: mContentColorDarkTheme),
    colorScheme: ColorScheme.dark(
      primary: mPrimaryColor,
      secondary: mSecondaryColor,
      error: mErrorColor,
    ),
    textTheme: GoogleFonts.interTextTheme(Theme.of(context).textTheme)
        .apply(bodyColor: mContentColorDarkTheme),
  );
}

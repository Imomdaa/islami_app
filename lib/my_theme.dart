import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemeData {
  static const Color primaryColor = Color(0xffB7935F);
  static const Color blackColor = Color(0xff242424);
  static ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          type: BottomNavigationBarType.fixed,
          showUnselectedLabels: false,
          showSelectedLabels: false,
          backgroundColor: primaryColor,
          selectedItemColor: blackColor,
          unselectedItemColor: Colors.white),
      appBarTheme: AppBarTheme(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      textTheme: TextTheme(
        bodyLarge: GoogleFonts.elMessiri(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Color(0xff242424)),
        bodyMedium: GoogleFonts.elMessiri(
            fontSize: 25,
            fontWeight: FontWeight.w600,
            color: Color(0xff242424)),
        bodySmall: GoogleFonts.elMessiri(
            fontSize: 22,
            fontWeight: FontWeight.normal,
            color: Color(0xff242424)),
      ));

  static ThemeData darkTheme = ThemeData();
}

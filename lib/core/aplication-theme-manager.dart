import 'package:flutter/material.dart';

class AplicationThemeManager {

  static const Color primaryColor = Color(0xFFB7935F);
  static ThemeData lightThemeData = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      centerTitle: true,
      backgroundColor: Colors.transparent,
      titleTextStyle: TextStyle(
        fontSize: 30,fontWeight: FontWeight.bold,
        color: Colors.black,fontFamily: "El messiri"
      )
    ),
    bottomNavigationBarTheme:  BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor:  primaryColor,
      selectedItemColor: Color(0xFF222222),
      selectedIconTheme: IconThemeData(
        size: 35,
        color: Color(0xFF222222),
      ),
      selectedLabelStyle: TextStyle(
        fontSize: 18,
      ),
      showUnselectedLabels: false,
        unselectedItemColor: Color(0xFFF8F8F8),
      unselectedIconTheme:  IconThemeData(
        size: 28,
        color: Color(0xFFF8F8F8),
      ),
    ),
    textTheme: TextTheme(
      titleLarge: TextStyle(
          fontSize: 30,fontWeight: FontWeight.bold,
          color: Colors.black,fontFamily: "El messiri",
      ),
      bodyLarge: TextStyle(
          fontSize: 25,fontWeight: FontWeight.w500,
          color: Colors.black,fontFamily: "El messiri"
      ),
      bodyMedium: TextStyle(
          fontSize: 25,fontWeight: FontWeight.w400,
          color: Colors.black,fontFamily: "El messiri"
      ),
      bodySmall: TextStyle(
          fontSize: 20,fontWeight: FontWeight.w400,
          color: Colors.black,fontFamily: "El messiri"
      )
    ),
    dividerTheme: DividerThemeData(
      color: primaryColor,
      space: 10,
    )
  );



}
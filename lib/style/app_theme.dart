import 'package:flutter/material.dart';

class AppTheme {
  static bool isDark = true;

  static Color lightPrimaryColor = Color(0xffB7935F);
  static Color darkPrimaryColor = Color(0xff141a2e);
  static Color lightSecondaryColor = Color(0xffB7935F).withOpacity(.57);
  static Color darkSecondaryColor = Color(0xfff8cb1d);

  static ThemeData LidhTheme = ThemeData(
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Color(0xffB7935F),
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
        unselectedIconTheme: IconThemeData(size: 25),
        selectedIconTheme: IconThemeData(size: 32)),
    iconTheme: IconThemeData(color: Colors.black),
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        titleTextStyle: TextStyle(
            fontSize: 28, color: Colors.black, fontWeight: FontWeight.bold)),
    colorScheme: ColorScheme.fromSeed(
      seedColor: lightPrimaryColor,
      primary: lightPrimaryColor,
      onPrimary: Colors.white,
      secondary: lightSecondaryColor,
      onSecondary: Colors.black,
    ),
    dividerColor: lightPrimaryColor,
    textTheme: TextTheme(
      bodyLarge:TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: Colors.black
      )  ,
        titleLarge:TextStyle(
           fontSize: 25,
          fontWeight: FontWeight.w600,
          color: Colors.black
        ),
        bodyMedium:TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w400,
        color: Colors.black
    ) ,
        bodySmall: TextStyle(
            fontSize: 14,
            color: Colors.black
        )
    ),
    cardTheme: CardTheme(
        color: Colors.white,
        surfaceTintColor: Colors.transparent,
    margin: EdgeInsets.all(20),
      elevation: 20
    ),
      bottomSheetTheme: BottomSheetThemeData( backgroundColor: Colors.white)

  );


  static ThemeData DarkTheme = ThemeData(
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: darkSecondaryColor,
        unselectedItemColor: Colors.white,
        unselectedIconTheme: IconThemeData(size: 25),
        selectedIconTheme: IconThemeData(size: 32)),
    iconTheme: IconThemeData(color: Colors.white),
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.white),
        titleTextStyle: TextStyle(
            fontSize: 28, color: Colors.white, fontWeight: FontWeight.bold)),
    colorScheme: ColorScheme.fromSeed(
      seedColor: darkPrimaryColor,
      primary: darkPrimaryColor,
      onPrimary: Colors.white,
      secondary: darkSecondaryColor,
      onSecondary: Colors.black,
    ),
    dividerColor: darkSecondaryColor,
    textTheme: TextTheme(
        bodyLarge:TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white,
        )  ,
       titleLarge:TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w600,
            color: Colors.white
        ) ,
      bodyMedium:TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w400,
          color: darkSecondaryColor
      ) ,
      bodySmall: TextStyle(
          fontSize: 14,
          color: Colors.white
      ),

    ),
    cardTheme: CardTheme(
        color: darkPrimaryColor,
        surfaceTintColor: Colors.transparent,
        margin: EdgeInsets.all(20),
        elevation: 20
    ),
    bottomSheetTheme:
    BottomSheetThemeData( backgroundColor: darkPrimaryColor)
  );
}

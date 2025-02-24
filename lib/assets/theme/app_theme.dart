import 'package:flutter/material.dart';
import 'package:clothing_store/assets/colors/colors.dart';
import 'package:clothing_store/assets/fonts/fonts.dart';

final appTheme = ThemeData.light().copyWith(
  primaryColor: grey13,
  colorScheme: ColorScheme.light().copyWith(
    primary: grey13,
    secondary: grey2,
  ),
  scaffoldBackgroundColor: backgroundColor,
  textTheme: TextTheme(
    titleLarge: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w600,
      color: grey10,
    ),
    titleMedium: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w600,
      color: grey10,
    ),
    titleSmall: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w600,
      color: grey13,
    ),
    headlineLarge: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      color: grey10,
    ),
    headlineMedium: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: grey10,
    ),
    headlineSmall: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      color: grey13,
    ),
    bodyLarge: TextStyle(
      fontSize: 14,
      color: grey13,
    ),
    bodyMedium: TextStyle(
      fontSize: 12,
      color: grey4,
    ),
    bodySmall: TextStyle(
      fontSize: 10,
      color: grey4,
    ),
    displayLarge: TextStyle(
      fontSize: 14,
      color: grey13,
    ),
    displayMedium: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w600,
      color: grey9,
    ),
    displaySmall: TextStyle(
      fontSize: 12,
      color: grey10,
      fontWeight: FontWeight.bold,
    ),
  ).apply(fontFamily: defaultFont),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      padding: EdgeInsets.symmetric(vertical: 18.0, horizontal: 16.0),
      backgroundColor: grey13,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(45.0),
      ),
      shadowColor: Colors.transparent,
    ),
  ),
  dividerTheme: DividerThemeData(color: grey3),
);

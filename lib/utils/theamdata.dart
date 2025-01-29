import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  useMaterial3: true,
  primaryColor: const Color(0xFF2196F3),
  scaffoldBackgroundColor: const Color(0xFF121212),

  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: const Color(0xffBC30AA).withOpacity(0.7),
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.r), // Responsive radius
      ),
    ),
  ),

  appBarTheme: AppBarTheme(
    iconTheme: const IconThemeData(color: Colors.white),
    elevation: 0,
    backgroundColor: Colors.deepPurple.withOpacity(0.8),
    surfaceTintColor: const Color(0xFF2196F3),
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontSize: 20.sp, // Responsive font size
      fontWeight: FontWeight.bold,
    ),
  ),

  buttonTheme: const ButtonThemeData(
    textTheme: ButtonTextTheme.primary,
  ),

  textTheme: TextTheme(
    titleLarge: TextStyle(
      fontSize: 22.sp, // Responsive title size
      color: Colors.white,
      fontWeight: FontWeight.bold,
    ),
    bodySmall: TextStyle(
      fontSize: 14.sp, // Responsive body text
      color: const Color(0xFFBDBDBD),
    ),
  ),

  inputDecorationTheme: InputDecorationTheme(
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.white),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.grey),
    ),
    contentPadding: EdgeInsets.all(16.w), // Responsive padding
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10.r)), // Responsive border
    ),
    labelStyle: TextStyle(color: Colors.white, fontSize: 14.sp),
    fillColor: Colors.black,
    filled: true,
  ),

  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: const Color(0xffBC30AA),
    foregroundColor: Colors.white,
  ),
);

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  useMaterial3: true,
  primaryColor: const Color(0xFF2196F3),
  scaffoldBackgroundColor: const Color(0xFFFAFAFA),

  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: const Color(0xffBC30AA).withOpacity(0.7),
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.r),
      ),
    ),
  ),

  appBarTheme: AppBarTheme(
    iconTheme: const IconThemeData(color: Colors.white),
    elevation: 0,
    backgroundColor: Colors.deepPurple.withOpacity(0.8),
    surfaceTintColor: const Color(0xFF2196F3),
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontSize: 20.sp,
      fontWeight: FontWeight.bold,
    ),
  ),

  buttonTheme: const ButtonThemeData(
    textTheme: ButtonTextTheme.primary,
  ),

  textTheme: TextTheme(
    titleLarge: TextStyle(
      fontSize: 22.sp,
      color: Colors.black,
      fontWeight: FontWeight.bold,
    ),
    bodySmall: TextStyle(
      fontSize: 14.sp,
      color: const Color(0xFF757575),
    ),
  ),

  inputDecorationTheme: InputDecorationTheme(
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.black),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.grey),
    ),
    contentPadding: EdgeInsets.all(16.w),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10.r)),
    ),
    labelStyle: TextStyle(color: Colors.black, fontSize: 14.sp),
    fillColor: Colors.white,
    filled: true,
  ),

  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: const Color(0xffBC30AA),
    foregroundColor: Colors.white,
  ),
);

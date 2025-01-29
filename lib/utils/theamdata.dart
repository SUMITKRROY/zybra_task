import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  useMaterial3: true,
  primaryColor: const Color(0xFF2196F3), // Neon Blue for primary theme
  scaffoldBackgroundColor: const Color(0xFF121212), // Dark Gray background

  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: const Color(0xffBC30AA).withOpacity(0.7), // Bright Blue
      foregroundColor: Colors.white, // White text on buttons
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10), // Rounded corners for buttons
      ),
    ),
  ),

  appBarTheme: AppBarTheme(
    iconTheme: const IconThemeData(color: Colors.white),
    elevation: 0,
    backgroundColor: Colors.deepPurple.withOpacity(0.8),
    surfaceTintColor: const Color(0xFF2196F3), // Bright Blue tint
    titleTextStyle: const TextStyle(
      color: Colors.white, // White text for AppBar title
      fontSize: 20, // Larger font size for title
      fontWeight: FontWeight.bold, // Bold AppBar title
    ),
  ),

  buttonTheme: const ButtonThemeData(
    textTheme: ButtonTextTheme.primary, // Consistent button text styling
  ),

  textTheme: const TextTheme(
    titleLarge: TextStyle(
      fontSize: 22, // Larger font for titles
      color: Colors.white, // White text for readability
      fontWeight: FontWeight.bold, // Bold titles
    ),
    bodySmall: TextStyle(
      fontSize: 14, // Smaller font for secondary text
      color: Color(0xFFBDBDBD), // Light Gray for secondary text
    ),
  ),

  inputDecorationTheme: InputDecorationTheme(

    enabledBorder: const OutlineInputBorder(
      borderSide: BorderSide(color: Colors.white), // Black border
    ),
    focusedBorder: const OutlineInputBorder(
      borderSide: BorderSide(color: Colors.grey), // Gray border on focus
    ),
    contentPadding: const EdgeInsets.all(16), // Padding for input fields
    border: const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)), // Rounded borders
    ),
    labelStyle: const TextStyle(color: Colors.white),
    fillColor: Colors.black,
    filled: true, // Enables background color for inputs
  ),
  floatingActionButtonTheme:   FloatingActionButtonThemeData(
    backgroundColor: Color(0xffBC30AA), // Default FAB color
    foregroundColor: Colors.white, // Icon color
  ),
);

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  useMaterial3: true,
  primaryColor: const Color(0xFF2196F3), // Bright Blue for primary theme
  scaffoldBackgroundColor:
      const Color(0xFFFAFAFA), // Light Beige for background

  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: const Color(0xffBC30AA).withValues(alpha: 0.7),
      foregroundColor: Colors.white, // White text on buttons
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10), // Rounded corners for buttons
      ),
    ),

  ),

  appBarTheme: AppBarTheme(
    iconTheme: const IconThemeData(color: Colors.white),
    elevation: 0,
    backgroundColor: Colors.deepPurple.withOpacity(0.8),
    surfaceTintColor: const Color(0xFF2196F3), // Bright Blue tint
    titleTextStyle: const TextStyle(
      color: Colors.white, // Black text for AppBar title
      fontSize: 20, // Larger font size for title
      fontWeight: FontWeight.bold, // Bold AppBar title
    ),
  ),

  buttonTheme: const ButtonThemeData(
    textTheme: ButtonTextTheme.primary, // Consistent button text styling
  ),

  textTheme: const TextTheme(
    titleLarge: TextStyle(
      fontSize: 22, // Larger font for titles
      color: Colors.black, // Black text for readability
      fontWeight: FontWeight.bold, // Bold titles
    ),
    bodySmall: TextStyle(
      fontSize: 14, // Smaller font for less emphasis
      color: Color(0xFF757575), // Light Gray for secondary text
    ),
  ),

  inputDecorationTheme: InputDecorationTheme(
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.black),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.grey),
    ),
    contentPadding: const EdgeInsets.all(16), // Padding for input fields
    border: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10))),
    labelStyle: const TextStyle(color: Colors.black), // Label text color
    fillColor: Colors.white, // White background
    filled: true, // Enables background color for inputs
  ),
  floatingActionButtonTheme:   FloatingActionButtonThemeData(
    backgroundColor: Color(0xffBC30AA), // Default FAB color
    foregroundColor: Colors.white, // Icon color
  ),
);

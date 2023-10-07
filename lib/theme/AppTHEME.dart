import 'package:flutter/material.dart';
import 'colors/colors.dart';
var LightTheme=ThemeData(
  dropdownMenuTheme:  DropdownMenuThemeData(
    textStyle: TextStyle(color:gr)
  ),
  scaffoldBackgroundColor: w,
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: b,
    unselectedLabelStyle:  TextStyle(
      color: w,
    ),
    selectedLabelStyle: const TextStyle(
      fontWeight: FontWeight.bold,
    ),
  ),

);
var darkTheme=ThemeData(
  appBarTheme: AppBarTheme(
    backgroundColor: b,
  ),
  dropdownMenuTheme:  DropdownMenuThemeData(
      textStyle: TextStyle(color:gr)
  ),
  scaffoldBackgroundColor: b,

  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: w,
    unselectedLabelStyle:  TextStyle(
      color: b,
    ),
    selectedLabelStyle:  TextStyle(
      color: bl,
      fontWeight: FontWeight.bold,
    ),
  ),

);
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import '../theme/colors/colors.dart';
List <LocalizationsDelegate<dynamic>> local=[
  GlobalCupertinoLocalizations.delegate,
  GlobalMaterialLocalizations.delegate,
  GlobalWidgetsLocalizations.delegate,
];
List <Locale>supportedLocal=[
  const Locale("fa", "IR"), // OR Locale('ar', 'AE') OR Other RTL locales
];
Decoration decoration= BoxDecoration(
  gradient: LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        w,
        g,
      ]

  ),
);
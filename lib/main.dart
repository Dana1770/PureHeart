
import 'dart:ffi';

import 'package:driver/constants/constants.dart';
import 'package:driver/homeScreen/home.dart';
import 'package:driver/splach/splach.dart';
import 'package:driver/theme/AppTHEME.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';


Future<void> main()async {
WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp();

  runApp(const DriversApp()  );
}
class DriversApp extends StatelessWidget{
  const DriversApp({super.key});

  @override
  Widget build(BuildContext context) {

    // TODO: implement build
   return MaterialApp(
     theme: darkTheme,
     themeMode: ThemeMode.dark,
     localizationsDelegates: local,
     supportedLocales: supportedLocal,
     locale: const Locale("fa", "IR"),
     debugShowCheckedModeBanner: false,
      home:SplachScreen() ,
   );
  }

}


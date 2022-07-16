// ignore_for_file: prefer_const_constructors, unnecessary_new

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:calculator/services/theme_service.dart';
import 'package:calculator/views/home_page.dart';
import 'package:calculator/widgets/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator',
      theme: Themes.light,
      darkTheme: Themes.dark,
      themeMode: ThemeService().theme,
     // home: HomePage(),
     home: AnimatedSplashScreen(
        splashIconSize: 1200.0,
        splashTransition: SplashTransition.scaleTransition,
       backgroundColor: Colors.black,
        duration: 1000,
      splash: new Image(image: AssetImage("assets/Nothingsplash.gif")) ,nextScreen: HomePage()),
    );
  }
}

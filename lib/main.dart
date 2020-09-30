import 'package:animationTest/home.dart';
import 'package:animationTest/splash.dart';
import 'package:flutter/material.dart';
void main()
{
  runApp(
    MaterialApp(
      initialRoute: "/",
      routes: {
        "/":(context)=>SplashScreen(),
        "/home":(context)=>ToHome(),
      },
    )
  );
}
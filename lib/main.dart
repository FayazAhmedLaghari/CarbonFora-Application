// ignore_for_file: prefer_const_constructors
import 'package:carbonfora_application/Screens/Auth/ForgotPasswordScreen.dart';
import 'package:carbonfora_application/Screens/Auth/RegisterScreen.dart';
import 'package:flutter/material.dart';
import 'Screens/Auth/LoginScreen.dart';
import 'Screens/HomeScreen.dart';
import 'Screens/OnboardingScreen1.dart';
import 'Screens/SplashScreen.dart';
import 'Screens/SplashScreen2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SplashScreen(),
    );
  }
}

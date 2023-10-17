import 'package:flutter/material.dart';
import 'package:login_ui/constants/colors.dart';
import 'package:login_ui/constants/strings.dart';
import 'package:login_ui/screens/splash.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appName,
      theme: ThemeData(
        scaffoldBackgroundColor: MyColors.white.toColor(),
      ),
      home: const SplashScreen(),
    );
  }
}

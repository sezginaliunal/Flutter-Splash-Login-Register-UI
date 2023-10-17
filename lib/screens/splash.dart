import 'package:flutter/material.dart';
import 'package:login_ui/constants/assets.dart';
import 'package:login_ui/screens/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    getToLoginPage();
    super.initState();
  }

  void getToLoginPage() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const LoginScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Image.asset(logoPath)),
    );
  }
}

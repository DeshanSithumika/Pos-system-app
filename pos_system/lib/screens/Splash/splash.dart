import 'package:flutter/material.dart';
import 'package:pos_system/Utils/util_nav.dart';
import 'package:pos_system/screens/auth/loging_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3),
        () => UtilNav.navigateTo(context, const LoginScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Image.asset("assets/logo2.png")),
    );
  }
}

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mpklver4/utils/global_colors.dart';
import 'package:mpklver4/view/login_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 2), () {
      Get.to(const LoginScreen());
    });
    return DecoratedBox(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("lib/assets/images/bgsplash.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Image.asset("lib/assets/images/plogo.png"),
        const Text(
          'SMK Teladan Kertasemaya',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.none,
          ),
        ),
      ]),
    );
  }
}

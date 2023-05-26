import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mpklver4/view/login_screen.dart';
import 'package:mpklver4/view/splash_screen.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}


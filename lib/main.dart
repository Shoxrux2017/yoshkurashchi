import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_flutter/onboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      color: Colors.white,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 255, 245, 245),
      ),
      debugShowCheckedModeBanner: false,
      home: const OnboardScreen(),
    );
  }
}

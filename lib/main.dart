import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:life_data_platfrom/screens/splash_screen.dart';
import 'package:life_data_platfrom/utils/font_ref.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LIFE DATA',
      theme: ThemeData(
        textTheme: const TextTheme(),
        scaffoldBackgroundColor: Colors.white,
        fontFamily: FontRef.poppins,
      ),
      home: const SplashScreen(),
    );
  }
}

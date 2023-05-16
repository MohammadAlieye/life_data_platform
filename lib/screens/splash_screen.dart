import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:life_data_platfrom/utils/app_ref.dart';
import 'package:life_data_platfrom/utils/colors.dart';

import 'get_start.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(SplashScreenController());
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.bottomRight,
              colors: [AppColors.dartBlue, AppColors.lightBlue]),
        ),
        child: Center(
            child: Image.asset(
          AppRef.splashIconPng,
        )),
      ),
    );
  }
}

class SplashScreenController extends GetxController {
  @override
  void onInit() {
    goto();
    super.onInit();
  }

  void goto() async {
    await Future.delayed(const Duration(seconds: 1), () async {
      Get.offAll(() => const GetStartScreen());
    });
  }
}

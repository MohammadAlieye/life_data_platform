import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:life_data_platfrom/utils/colors.dart';
import '../utils/widgets.dart';

class SiginUpScreen extends GetView {
  const SiginUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: Get.height * 0.08,
            ),
            const AppIconWidget(),
            SizedBox(
              height: Get.height * 0.030,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Name',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            const CustomTextField(
              text: 'Username',
            ),
            const SizedBox(
              height: 8,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Email',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            const CustomTextField(
              text: "Email",
            ),
            const SizedBox(
              height: 8,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Password',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            const CustomTextField(
              text: "Password",
            ),
            const SizedBox(
              height: 40,
            ),
            const CustomButton(
              text: 'Register',
              buttonColor: AppColors.blue,
            ),
            const SizedBox(
              height: 12,
            ),
          ],
        ),
      ),
    );
  }
}

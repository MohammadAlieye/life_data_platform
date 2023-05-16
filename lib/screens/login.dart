import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:life_data_platfrom/screens/pick_categories.dart';
import 'package:life_data_platfrom/utils/colors.dart';
import '../utils/widgets.dart';

class LoginScreen extends GetView {
  const LoginScreen({super.key});

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
              height: Get.height * 0.057,
            ),
            const Text(
              'Login',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
            ),
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
              text: 'Email',
            ),
            const SizedBox(
              height: 20,
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
            CustomButton(
              text: 'Login',
              buttonColor: AppColors.blue,
              ontap: () => Get.to(() => const PickCategoriesScreen()),
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

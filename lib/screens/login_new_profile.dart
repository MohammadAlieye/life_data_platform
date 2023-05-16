import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:life_data_platfrom/screens/sign_up.dart';
import 'package:life_data_platfrom/utils/app_ref.dart';
import 'package:life_data_platfrom/utils/colors.dart';

import '../utils/font_ref.dart';
import '../utils/widgets.dart';
import 'login.dart';

class LoginNewProfileScreen extends GetView {
  const LoginNewProfileScreen({super.key});

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
              height: Get.height * 0.02,
            ),
            SvgPicture.asset(AppRef.onboardImage2svg),
            const Spacer(),
            CustomButton(
              icon: AppRef.profileSvg,
              text: 'Login as name',
              buttonColor: AppColors.blue,
              ontap: () => Get.to(() => const LoginScreen()),
            ),
            const SizedBox(
              height: 12,
            ),
            const CustomButton(
              icon: AppRef.loginSvg,
              text: 'Login as someone else',
              buttonColor: AppColors.silver,
              iconColor: AppColors.textBlue,
              textColor: AppColors.textBlue,
            ),
            const SizedBox(
              height: 12,
            ),
            BorderButton(
              icon: AppRef.addUserSvg,
              text: 'New Profile',
              buttonColor: Colors.white,
              iconColor: AppColors.textBlue,
              textColor: AppColors.textBlue,
              ontap: () => Get.to(() => const SiginUpScreen()),
            ),
            SizedBox(
              height: Get.height * .05,
            ),
          ],
        ),
      ),
    );
  }
}

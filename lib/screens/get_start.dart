import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:life_data_platfrom/utils/app_ref.dart';
import 'package:life_data_platfrom/utils/colors.dart';

import '../utils/font_ref.dart';
import '../utils/widgets.dart';
import 'login_new_profile.dart';

class GetStartScreen extends GetView {
  const GetStartScreen({super.key});

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
              height: Get.height * 0.06,
            ),
            SvgPicture.asset(AppRef.onboardImage1svg),
            SizedBox(
              height: Get.height * 0.08,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Best way to track!',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(
              height: 7,
            ),
            const Text(
              'Life data is an extremely simple way of tracking progress for any thing!',
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: Get.height * 0.06,
            ),
            CustomButton(
              ontap: () => Get.to(() => const LoginNewProfileScreen()),
              text: 'Get started',
              buttonColor: AppColors.blue,
            ),
          ],
        ),
      ),
    );
  }
}

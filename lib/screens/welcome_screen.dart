import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:life_data_platfrom/utils/colors.dart';

import '../utils/app_ref.dart';
import '../utils/font_ref.dart';
import '../utils/widgets.dart';
import 'graph_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(WelcomeScreenController());
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          const SizedBox(
            height: 60,
          ),
          Row(
            children: [
              const SizedBox(
                width: 18,
              ),
              SvgPicture.asset(
                AppRef.flowerSvg,
                width: 30,
                height: 20,
              ),
              const SizedBox(
                width: 10,
              ),
              const Text(
                'LIFEDATA',
                style: TextStyle(
                  fontFamily: FontRef.abel,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 10,
                ),
              ),
              const Spacer(),
              Container(
                  width: 34,
                  height: 34,
                  padding: const EdgeInsets.all(5),
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: AppColors.appIconColors),
                  child: SvgPicture.asset(
                    AppRef.bellSvg,
                  )),
              const SizedBox(
                width: 10,
              ),
              Container(
                  width: 34,
                  height: 34,
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(width: 2, color: AppColors.silver)),
                  child: SvgPicture.asset(
                    AppRef.settingsSvg,
                  )),
              const SizedBox(
                width: 18,
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 18),
              child: Text(
                'Welcome John!',
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 13,
          ),
          const Text(
            '“I deserve and attract massive financial success”',
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.italic),
          ),
          const SizedBox(
            height: 13,
          ),
          const Divider(
            height: 0,
            color: AppColors.textFieldBorder,
          ),
          const SizedBox(
            height: 13,
          ),
          Row(
            children: [
              const SizedBox(
                width: 18,
              ),
              const Text(
                'List view',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
              const SizedBox(
                width: 10,
              ),
              const Text(
                'Quick Input',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColors.textSilver),
              ),
              const Spacer(),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(width: 2, color: AppColors.silver)),
                child: Row(
                  children: const [
                    SizedBox(
                      width: 8,
                    ),
                    Icon(
                      Icons.calendar_month_outlined,
                      color: AppColors.textSilver,
                      size: 15,
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      '20/04/2023',
                      style: TextStyle(
                          fontSize: 9,
                          fontWeight: FontWeight.w400,
                          color: AppColors.textSilver),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 12,
              ),
              GestureDetector(
                onTap: () {
                  _settingModalBottomSheet(context);
                },
                child: Container(
                    width: 34,
                    height: 34,
                    padding: const EdgeInsets.all(7),
                    decoration: const BoxDecoration(
                      color: AppColors.purple,
                      shape: BoxShape.circle,
                    ),
                    child: SvgPicture.asset(
                      AppRef.clipSvg,
                    )),
              ),
              const SizedBox(
                width: 18,
              ),
            ],
          ),
          const SizedBox(
            height: 18,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: MapWidget(
                title: 'Mindset',
                data: controller.mindsetList,
              ),
            ),
          ),
          const SizedBox(
            height: 18,
          ),
          const Divider(
            height: 0,
            color: AppColors.textFieldBorder,
          ),
          const SizedBox(
            height: 18,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: MapWidget(
                title: "Body",
                data: controller.bodyList,
              ),
            ),
          ),
          const SizedBox(
            height: 18,
          ),
          const Divider(
            height: 0,
            color: AppColors.textFieldBorder,
          ),
          const SizedBox(
            height: 18,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: MapWidget(
                title: "Relationships",
                data: controller.mindsetList,
              ),
            ),
          ),
          const SizedBox(
            height: 18,
          ),
          const Divider(
            height: 0,
            color: AppColors.textFieldBorder,
          ),
          const SizedBox(
            height: 18,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: MapWidget(
                title: "Trading",
                data: controller.mindsetList,
              ),
            ),
          ),
          const SizedBox(
            height: 18,
          ),
          const Divider(
            height: 0,
            color: AppColors.textFieldBorder,
          ),
          const SizedBox(
            height: 18,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Row(
              children: const [
                Icon(Icons.add, color: AppColors.textBlue),
                SizedBox(
                  width: 7,
                ),
                Text(
                  'Add new Catagory',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: AppColors.textBlue),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 17,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 18),
            child: CustomTextField(
              text: "Note for Today...",
              maxLines: 3,
              minLines: 3,
            ),
          ),
          SizedBox(
            height: Get.height * .03,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.to(() => const GraphScreen());
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 50),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: AppColors.textBlue),
                    child: const Text(
                      'Submit',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                  ),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 37),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: AppColors.whiteButton),
                  child: const Center(
                    child: Text(
                      'Undo Submit',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: AppColors.textBlue),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: Get.height * .05,
          ),
        ]),
      ),
    );
  }

  void _settingModalBottomSheet(context) {
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        context: context,
        builder: (BuildContext context) {
          return Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    const SizedBox(
                      width: 15,
                    ),
                    const Icon(Icons.arrow_back_ios),
                    const Text(
                      'Back',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: AppColors.textBlue),
                    ),
                    const Spacer(),
                    const Text(
                      'Mindset',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    ),
                    const SizedBox(
                      width: 14,
                    ),
                    const Text(
                      'Mood',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: AppColors.textBlue),
                    ),
                    const Spacer(),
                    IconButton(
                        onPressed: () {
                          Get.back();
                        },
                        icon: const Icon(Icons.close)),
                    const SizedBox(
                      width: 5,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                const Divider(
                  height: 0,
                  color: AppColors.textFieldBorder,
                ),
                const SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 11, horizontal: 14),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: AppColors.whiteButton),
                      child: const Center(
                        child: Text(
                          '-1',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: AppColors.textBlue),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 14,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 11, horizontal: 14),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: AppColors.whiteButton),
                      child: const Center(
                        child: Text(
                          '0',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: AppColors.textBlue),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 14,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 11, horizontal: 14),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: AppColors.whiteButton),
                      child: const Center(
                        child: Text(
                          '+1',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: AppColors.textBlue),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                  ],
                ),
                SizedBox(
                  height: Get.height * .1,
                )
              ],
            ),
          );
        });
  }
}

class WelcomeScreenController extends GetxController {
  RxList<String> mindsetList = [
    'Mood',
    'Clarity',
    'Motivation',
    'Organization',
  ].obs;
  RxList<String> bodyList = [
    'Mood',
    'Clarity',
    'Motivation',
    'Organization',
  ].obs;
  RxList<String> relationshipsList = [
    'Partner',
    'Colleagues',
    'Family',
    'Friends',
  ].obs;
  RxList<String> tradingList = [
    'Progress',
    'On top of market',
    'Money coming in',
    'Sentiment',
  ].obs;
}

class MapWidget extends StatelessWidget {
  final List<String> data;
  final String title;
  const MapWidget({
    super.key,
    required this.data,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(
          height: 18,
        ),
        Wrap(
          children: data
              .map((e) => Padding(
                    padding: const EdgeInsets.only(right: 8, bottom: 8),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 17),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          color: AppColors.containerBg),
                      child: Text(
                        e,
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ))
              .toList(),
        )
      ],
    );
  }
}

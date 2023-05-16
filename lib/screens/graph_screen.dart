import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:life_data_platfrom/utils/colors.dart';

import '../utils/app_ref.dart';
import '../utils/font_ref.dart';
import '../utils/widgets.dart';

class GraphScreen extends StatelessWidget {
  const GraphScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(GraphScreenController());
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Graph view',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                      width: 34,
                      height: 34,
                      padding: const EdgeInsets.all(7),
                      decoration: const BoxDecoration(
                        color: AppColors.purple,
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset(
                        AppRef.clip1Svg,
                      )),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: GraphWidget(
              tabBarList: controller.tabBarList1,
              graphCategory: controller.graphCategory1,
              salesData1: controller.salesData1,
              salesData2: controller.salesData2,
              salesData3: controller.salesData3,
              salesData4: controller.salesData4,
            ),
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: GraphWidget(
              tabBarList: controller.tabBarList2,
              graphCategory: controller.graphCategory2,
              salesData1: controller.salesData1,
              salesData2: controller.salesData2,
              salesData3: controller.salesData3,
              salesData4: controller.salesData4,
            ),
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: GraphWidget(
              tabBarList: controller.tabBarList3,
              graphCategory: controller.graphCategory3,
              salesData1: controller.salesData1,
              salesData2: controller.salesData2,
              salesData3: controller.salesData3,
              salesData4: controller.salesData4,
            ),
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: GraphWidget(
              tabBarList: controller.tabBarList4,
              graphCategory: controller.graphCategory4,
              salesData1: controller.salesData1,
              salesData2: controller.salesData2,
              salesData3: controller.salesData3,
              salesData4: controller.salesData4,
            ),
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
        ]),
      ),
    );
  }
}

class GraphScreenController extends GetxController {
  List<SalesData> get salesData1 => _salesData1;
  List<SalesData> get salesData2 => _salesData2;
  List<SalesData> get salesData3 => _salesData3;
  List<SalesData> get salesData4 => _salesData4;
  List<String> tabBarList1 = ['Mindset', 'Total'];
  List<String> tabBarList2 = ['Body', 'Total'];
  List<String> tabBarList3 = ['Relationships', 'Total'];
  List<String> tabBarList4 = ['Trading', 'Total'];
  List<String> graphCategory1 = [
    'Mood',
    'Clarity',
    'Motivation',
    'Organization'
  ];
  List<String> graphCategory2 = [
    'Groundedness',
    'Relaxation',
    'Pain-free',
    'Good Vibes'
  ];
  List<String> graphCategory3 = ['Partner', 'Colleagues', 'Family', 'Friends'];
  List<String> graphCategory4 = [
    'Progress',
    'On top of market',
    'Money coming in',
    'Sentiment'
  ];
  final List<SalesData> _salesData1 = [
    SalesData('4/5/2023', 0),
    SalesData('4/6/2023', 10),
    SalesData('4/7/2023', 30),
    SalesData('4/8/2023', 32),
  ];

  final List<SalesData> _salesData2 = [
    SalesData('4/5/2023', 0),
    SalesData('4/6/2023', 10),
    SalesData('4/7/2023', 18),
    SalesData('4/8/2023', 26),
  ];

  final List<SalesData> _salesData3 = [
    SalesData('4/5/2023', 10),
    SalesData('4/6/2023', 25),
    SalesData('4/7/2023', 15),
    SalesData('4/8/2023', 20),
  ];

  final List<SalesData> _salesData4 = [
    SalesData('4/5/2023', -10),
    SalesData('4/6/2023', 0),
    SalesData('4/7/2023', 29),
    SalesData('4/8/2023', 25),
  ];
}

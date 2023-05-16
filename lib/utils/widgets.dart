import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import 'app_ref.dart';
import 'colors.dart';
import 'font_ref.dart';

class CustomButton extends StatelessWidget {
  final String? icon;
  final String text;
  final Color? buttonColor;
  final Color? iconColor;
  final Color? textColor;
  final void Function()? ontap;

  const CustomButton({
    super.key,
    this.icon,
    required this.text,
    required this.buttonColor,
    this.ontap,
    this.iconColor,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: Get.width,
        height: 50,
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(6)),
            color: buttonColor),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          if (icon != null)
            SvgPicture.asset(
              icon!,
              color: iconColor,
              width: 18,
              height: 18,
            ),
          const SizedBox(
            width: 10,
          ),
          Text(
            text,
            style: TextStyle(
              color: textColor ?? Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
        ]),
      ),
    );
  }
}

class BorderButton extends StatelessWidget {
  final String? icon;
  final String text;
  final Color? buttonColor;
  final Color? iconColor;
  final Color? textColor;
  final void Function()? ontap;

  const BorderButton({
    super.key,
    this.icon,
    required this.text,
    required this.buttonColor,
    this.ontap,
    this.iconColor,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: Get.width,
        height: 50,
        decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: AppColors.textBlue,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(6)),
            color: buttonColor),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          if (icon != null)
            SvgPicture.asset(
              icon!,
              color: iconColor,
              width: 18,
              height: 18,
            ),
          const SizedBox(
            width: 10,
          ),
          Text(
            text,
            style: TextStyle(
              color: textColor ?? Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
        ]),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  final String text;
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final TextInputType? textInputType;
  final int? minLines;
  final int? maxLines;
  const CustomTextField({
    super.key,
    this.controller,
    this.onChanged,
    this.validator,
    required this.text,
    this.textInputType,
    this.minLines,
    this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      onChanged: onChanged,
      maxLines: maxLines ?? 1,
      minLines: minLines ?? 1,
      decoration: InputDecoration(
          labelText: text,
          labelStyle: const TextStyle(color: AppColors.textFieldtext),
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: AppColors.silver,
                width: 2,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(6),
              )),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: AppColors.textFieldtext,
                width: 2,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(6),
              )),
          border: const OutlineInputBorder(gapPadding: 0),
          errorBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red, width: 5),
          )),
    );
  }
}

class AppIconWidget extends StatelessWidget {
  const AppIconWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(AppRef.flowerSvg),
        const SizedBox(
          height: 24,
        ),
        const Text(
          'LIFEDATA',
          style: TextStyle(
            fontFamily: FontRef.abel,
            fontSize: 20,
            fontWeight: FontWeight.w400,
            letterSpacing: 10,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        const Text(
          'chart your course',
          style: TextStyle(
              fontFamily: FontRef.abel,
              fontSize: 11,
              fontWeight: FontWeight.w400,
              letterSpacing: 4,
              color: AppColors.textBlue),
        ),
      ],
    );
  }
}

class GraphTitleWidget extends StatelessWidget {
  final Color colors;
  final String text;
  const GraphTitleWidget({
    super.key,
    required this.colors,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 4,
          height: 4,
          decoration: BoxDecoration(shape: BoxShape.circle, color: colors),
        ),
        const SizedBox(
          width: 4,
        ),
        Text(
          text,
          style: const TextStyle(
            fontSize: 9,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}

class GraphWidget extends StatefulWidget {
  final List<String> tabBarList;
  final List<String> graphCategory;
  final List<SalesData> salesData1;
  final List<SalesData> salesData2;
  final List<SalesData> salesData3;
  final List<SalesData> salesData4;
  const GraphWidget({
    super.key,
    required this.tabBarList,
    required this.graphCategory,
    required this.salesData1,
    required this.salesData2,
    required this.salesData3,
    required this.salesData4,
  });

  @override
  State<GraphWidget> createState() => _GraphWidgetState();
}

class _GraphWidgetState extends State<GraphWidget> {
  final PageController _pageController =
      PageController(initialPage: 0, keepPage: false);
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 40,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: widget.tabBarList.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      currentIndex = index;
                      _pageController.animateToPage(index,
                          duration: const Duration(
                            milliseconds: 300,
                          ),
                          curve: Curves.linear);
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(right: 14),
                    child: Text(
                      widget.tabBarList[index],
                      style: TextStyle(
                          color: index == currentIndex
                              ? Colors.black
                              : AppColors.textSilver,
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                );
              }),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .45,
          child: PageView(
            scrollDirection: Axis.horizontal,
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            children: [
              Column(
                children: [
                  Container(
                    width: Get.width,
                    height: 24,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: AppColors.containerBg),
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: widget.graphCategory.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            child: GraphTitleWidget(
                              colors: getColor(index),
                              text: widget.graphCategory[index],
                            ),
                          );
                        }),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SfCartesianChart(
                    primaryXAxis: CategoryAxis(),
                    series: <LineSeries<SalesData, String>>[
                      LineSeries<SalesData, String>(
                        color: AppColors.purpleGraph,
                        dataSource: widget.salesData1,
                        xValueMapper: (SalesData sales, _) => sales.month,
                        yValueMapper: (SalesData sales, _) => sales.sales,
                      ),
                      LineSeries<SalesData, String>(
                        color: AppColors.redGraph,
                        dataSource: widget.salesData2,
                        xValueMapper: (SalesData sales, _) => sales.month,
                        yValueMapper: (SalesData sales, _) => sales.sales,
                      ),
                      LineSeries<SalesData, String>(
                        color: AppColors.yellowGraph,
                        dataSource: widget.salesData3,
                        xValueMapper: (SalesData sales, _) => sales.month,
                        yValueMapper: (SalesData sales, _) => sales.sales,
                      ),
                      LineSeries<SalesData, String>(
                        color: AppColors.greenGraph,
                        dataSource: widget.salesData4,
                        xValueMapper: (SalesData sales, _) => sales.month,
                        yValueMapper: (SalesData sales, _) => sales.sales,
                      ),
                    ],
                  ),
                ],
              ),
              SfCartesianChart(
                primaryXAxis: CategoryAxis(),
                series: <LineSeries<SalesData, String>>[
                  LineSeries<SalesData, String>(
                    color: AppColors.greenButton,
                    dataSource: widget.salesData1,
                    xValueMapper: (SalesData sales, _) => sales.month,
                    yValueMapper: (SalesData sales, _) => sales.sales,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Color getColor(int index) {
    switch (index) {
      case 0:
        return AppColors.purpleGraph;
      case 1:
        return AppColors.redGraph;
      case 2:
        return AppColors.yellowGraph;
      case 3:
        return AppColors.greenGraph;
      default:
        return AppColors.greenGraph;
    }
  }
}

class SalesData {
  SalesData(this.month, this.sales);
  final String month;
  final int sales;
}

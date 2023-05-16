// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:life_data_platfrom/utils/colors.dart';
// import '../utils/widgets.dart';

// class PickCategoriesScreen extends StatelessWidget {
//   const PickCategoriesScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final controller = Get.put(PickCategories2Controller());
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 25),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             SizedBox(
//               height: Get.height * 0.08,
//             ),
//             const AppIconWidget(),
//             SizedBox(
//               height: Get.height * 0.050,
//             ),
//             const Padding(
//               padding: EdgeInsets.symmetric(horizontal: 20),
//               child: Text(
//                 'What areas of your life would you like to track?',
//                 style: TextStyle(
//                   fontSize: 22,
//                   fontWeight: FontWeight.w600,
//                 ),
//                 textAlign: TextAlign.center,
//               ),
//             ),
//             SizedBox(
//               height: Get.height * 0.025,
//             ),
//             const Align(
//               alignment: Alignment.topLeft,
//               child: Text(
//                 'Pick your categories & define metrics',
//                 style: TextStyle(
//                   fontSize: 14,
//                   fontWeight: FontWeight.w400,
//                 ),
//               ),
//             ),
//             const SizedBox(
//               height: 7,
//             ),
//             Obx(() => GestureDetector(
//                   onTap: () {
//                     controller.showDropDown.value = true;
//                     controller.firstItem.value = "Select";
//                     controller.showMetricButton.value = false;
//                   },
//                   child: Container(
//                     width: Get.width,
//                     height: 50,
//                     decoration: BoxDecoration(
//                         borderRadius:
//                             const BorderRadius.all(Radius.circular(6)),
//                         border: Border.all(color: AppColors.textFieldBorder)),
//                     padding: const EdgeInsets.symmetric(horizontal: 15),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(
//                           controller.firstItem.value,
//                           style: const TextStyle(
//                             fontSize: 12,
//                             fontWeight: FontWeight.w400,
//                           ),
//                         ),
//                         const Icon(
//                           Icons.keyboard_arrow_down,
//                           color: AppColors.textFieldBorder,
//                         )
//                       ],
//                     ),
//                   ),
//                 )),
//             const SizedBox(
//               height: 10,
//             ),
//             Obx(() => controller.showDropDown.value
//                 ? Container(
//                     width: Get.width,
//                     height: Get.height * .4,
//                     decoration: BoxDecoration(
//                         borderRadius:
//                             const BorderRadius.all(Radius.circular(6)),
//                         border: Border.all(color: AppColors.textFieldBorder)),
//                     child: Column(children: [
//                       Padding(
//                         padding: const EdgeInsets.fromLTRB(17, 10, 0, 0),
//                         child: Row(
//                           children: [
//                             const Icon(
//                               Icons.add,
//                             ),
//                             InkWell(
//                               onTap: () {
//                                 controller.firstItem.value = "Add your own";
//                                 controller.showDropDown.value = false;
//                               },
//                               child: const Text(
//                                 'Add your own',
//                                 style: TextStyle(
//                                   fontSize: 12,
//                                   fontWeight: FontWeight.w500,
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       const Divider(
//                         color: Colors.black,
//                       ),
//                       Expanded(
//                         child: Padding(
//                           padding: const EdgeInsets.only(
//                               left: 17, top: 0, bottom: 0),
//                           child: ListView.builder(
//                               itemCount: controller.categoriesList.length,
//                               itemBuilder: (context, index) {
//                                 return Obx(() => CheckboxListTile(
//                                       title: Text(
//                                         controller.categoriesList[index],
//                                         style: const TextStyle(
//                                           fontSize: 12,
//                                           fontWeight: FontWeight.w500,
//                                         ),
//                                       ),
//                                       value: controller.selected[index].value,
//                                       onChanged: (bool? value) {
//                                         controller.selected[index].value =
//                                             value!;
//                                       },
//                                     ));
//                               }),
//                         ),
//                       )
//                     ]),
//                   )
//                 : const Offstage()),
//             Obx(() => controller.firstItem.value == 'Add your own'
//                 ? const CustomField(
//                     text: 'Write your own category here',
//                   )
//                 : const Offstage()),
//             Obx(() => controller.showMetricButton.value
//                 ? GestureDetector(
//                     onTap: () {
//                       controller.addMetric.value = !controller.addMetric.value;
//                     },
//                     child: Container(
//                       width: Get.width,
//                       height: 50,
//                       decoration: const BoxDecoration(
//                           borderRadius: BorderRadius.all(Radius.circular(6)),
//                           color: AppColors.greenButton),
//                       padding: const EdgeInsets.symmetric(horizontal: 15),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           const Text(
//                             'Define metric 1',
//                             style: TextStyle(
//                                 fontSize: 12,
//                                 fontWeight: FontWeight.w400,
//                                 color: Colors.white),
//                           ),
//                           Icon(
//                               controller.addMetric.value
//                                   ? Icons.add
//                                   : Icons.remove,
//                               color: Colors.white)
//                         ],
//                       ),
//                     ),
//                   )
//                 : const Offstage()),
//             const Spacer(),
//             Obx(() => controller.showDropDown.value
//                 ? Padding(
//                     padding: const EdgeInsets.only(bottom: 20),
//                     child: CustomButton(
//                       text: 'Done',
//                       buttonColor: AppColors.blue,
//                       ontap: () {
//                         controller.showMetricButton.value = true;
//                         controller.showDropDown.value = false;
//                       },
//                     ),
//                   )
//                 : const Offstage()),
//             Obx(() => controller.showMetricButton.value
//                 ? Padding(
//                     padding: const EdgeInsets.only(bottom: 20),
//                     child: CustomButton(
//                       text: 'Finished',
//                       buttonColor: AppColors.blue,
//                       ontap: () {
//                         print(controller.selected);
//                       },
//                     ),
//                   )
//                 : const Offstage()),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class PickCategories2Controller extends GetxController {
//   RxString firstItem = "Select".obs;
//   RxBool addMetric = true.obs;
//   RxBool showDropDown = false.obs;
//   RxBool showMetricButton = false.obs;

//   RxList<String> categoriesList = [
//     'Physical Health',
//     'Mental and Emotional Health',
//     'Relationships',
//     'Career and Work',
//     'Personal Growth',
//     'Leisure and Recreation',
//     'Spiritual and Philosophical',
//     'Financial Health',
//     'Environmental Health',
//     'Civic Engagement',
//     'Technology and Innovation',
//     'Creativity and Artistic Expression',
//   ].obs;

//   RxList<RxBool> selected = [
//     false.obs,
//     false.obs,
//     false.obs,
//     false.obs,
//     false.obs,
//     false.obs,
//     false.obs,
//     false.obs,
//     false.obs,
//     false.obs,
//     false.obs,
//     false.obs,
//   ].obs;
// }

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoadingHelper {
  static showLoading() {
    Get.dialog(
      barrierDismissible: false,
      Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            GetPlatform.isAndroid
                ? const CircularProgressIndicator(color: Colors.blue)
                : const CupertinoActivityIndicator(color: Colors.blue)
          ],
        ),
      ),
    );
  }

  static void hideLoading() {
    if (Get.isDialogOpen ?? false) Get.back();
  }
}

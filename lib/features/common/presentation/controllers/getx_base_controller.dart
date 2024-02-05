import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class GetxBaseController extends GetxController {
  final isLoading = false.obs;

  void closeLoading() => EasyLoading.dismiss();

  void showLoading([String? customText]) {
    EasyLoading.show(
      status: customText ?? 'LOADING'.tr,
      maskType: EasyLoadingMaskType.black,
    );
  }

  void showSuccessMessage(String title, String subtitle) {
    Get.snackbar(
      title,
      subtitle,
      colorText: Colors.white,
      backgroundColor: Colors.green.shade300,
      icon: const Center(
        child: FaIcon(FontAwesomeIcons.check, color: Colors.white),
      ),
    );
  }

  void showErrorMessage(String title, String subtitle) {
    Get.snackbar(
      title,
      subtitle,
      colorText: Colors.white,
      backgroundColor: Colors.redAccent.shade100,
      icon: const Center(
        child: FaIcon(FontAwesomeIcons.circleExclamation, color: Colors.white),
      ),
    );
  }
}

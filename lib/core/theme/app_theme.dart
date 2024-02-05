library app_theme;

export 'src/app_images.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

part 'src/app_colors.dart';
part 'src/app_sized_box.dart';
part 'src/app_text_style.dart';

class AppTheme {
  static AppStyle get style => AppStyle();
  static AppColors get colors => Get.isDarkMode ? DarkColors() : LightColors();
}

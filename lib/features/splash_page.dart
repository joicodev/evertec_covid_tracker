import 'package:animate_do/animate_do.dart';
import 'package:evertec_covid_tracker/core/config/images.dart';
import 'package:evertec_covid_tracker/core/theme/app_theme.dart';
import 'package:evertec_covid_tracker/features/common/domain/extensions/padding_extension.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liquid_progress_indicator_v2/liquid_progress_indicator.dart';

import 'common/presentation/controllers/main_controller.dart';
import 'common/presentation/widgets/base_pages_widget.dart';

class SplashPage extends GetViewBasePage<MainController> {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _splashLogo(),
          _loadingWidget(),
        ],
      ),
    );
  }

  Widget _splashLogo() {
    return SizedBox(
      child: ZoomIn(
        child: Center(
          child: Image.asset(
            coronavirusLogo,
          ).paddingAll(20),
        ),
      ),
    );
  }

  Widget _loadingWidget() {
    return Obx(() {
      return Column(
        children: [
          Text('LOADING'.tr, style: AppTheme.style.bodyBold),
          heightSpace8,
          SizedBox(
            height: 30,
            child: LiquidLinearProgressIndicator(
              value: controller.loadingValue,
              valueColor: AlwaysStoppedAnimation(AppTheme.colors.secondary),
              backgroundColor: Colors.white,
              borderColor: Colors.black,
              borderWidth: 3.0,
              borderRadius: 9.0,
              direction: Axis.horizontal,
              // center: const Text("Loading..."),
            ),
          ).paddingHorizontal(16),
          heightSpace8,
          Text(
            '${controller.splashCounter.value}%',
            style: AppTheme.style.bodyBold,
          ),
        ],
      );
    });
  }
}

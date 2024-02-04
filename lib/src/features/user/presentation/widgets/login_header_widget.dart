import 'package:evertec_covid_tracker/core/config/images.dart';
import 'package:evertec_covid_tracker/core/theme/app_theme.dart';
import 'package:evertec_covid_tracker/src/common/presentation/extensions/padding_extension.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginHeaderWidget extends StatelessWidget {
  const LoginHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomLeft,
      children: [
        Image.asset(loginHeader),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'WELCOME_TO'.tr,
              style: AppTheme.style.contentParagraphRegular,
            ),
            Text(
              'APP_NAME'.tr,
              style: AppTheme.style.headings1.copyWith(
                fontWeight: FontWeight.w700,
                color: AppTheme.colors.customGrey,
              ),
            ).paddingLeft(10),
          ],
        ).paddingSymmetric(horizontal: 8, vertical: 2)
      ],
    );
  }
}

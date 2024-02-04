import 'package:evertec_covid_tracker/core/theme/app_theme.dart';
import 'package:evertec_covid_tracker/src/common/presentation/widgets/app_scaffold.dart';
import 'package:evertec_covid_tracker/src/common/presentation/widgets/base_pages_widget.dart';
import 'package:evertec_covid_tracker/src/common/presentation/widgets/buttons/src/primary_button.dart';
import 'package:evertec_covid_tracker/src/common/presentation/widgets/custom_scroll_view.dart';
import 'package:evertec_covid_tracker/src/features/user/presentation/controllers/user_controller.dart';
import 'package:evertec_covid_tracker/src/features/user/presentation/widgets/login_form_widget.dart';
import 'package:evertec_covid_tracker/src/features/user/presentation/widgets/login_header_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends GetViewBasePage<UserController> {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      safeAreaTop: false,
      bodyIntoContainer: false,
      resizeToAvoidBottomInset: true,
      child: Column(
        children: [
          const LoginHeaderWidget(),
          heightSpace24,
          Expanded(
            child: AppCustomScrollView(
              Column(
                children: [
                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: defaultPaddingSize,
                      ),
                      child: LoginFormWidget(),
                    ),
                  ),
                  heightSpace30,
                  AppPrimaryButton(
                    title: 'LOGIN'.tr,
                    isDisabled: false,
                    onPressed: () => controller.login(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

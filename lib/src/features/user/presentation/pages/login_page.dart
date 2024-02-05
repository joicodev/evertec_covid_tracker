import 'package:evertec_covid_tracker/core/config/images.dart';
import 'package:evertec_covid_tracker/core/theme/app_theme.dart';
import 'package:evertec_covid_tracker/src/common/presentation/widgets/app_scaffold.dart';
import 'package:evertec_covid_tracker/src/common/presentation/widgets/base_pages_widget.dart';
import 'package:evertec_covid_tracker/src/common/presentation/widgets/buttons/src/app_base_social_button.dart';
import 'package:evertec_covid_tracker/src/common/presentation/widgets/buttons/src/primary_button.dart';
import 'package:evertec_covid_tracker/src/common/presentation/widgets/buttons/src/secondary_button.dart';
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
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  _buildFormWidget(),
                  heightSpace30,
                  _buildLoginButton(),
                  _buildRegisterButton(),
                  heightSpace10,
                  _buildButtonsRRSS(),
                ],
              ),
            ).paddingSymmetric(horizontal: defaultPaddingSize),
          ),
        ],
      ),
    );
  }

  Widget _buildFormWidget() {
    return const Expanded(
      child: LoginFormWidget(),
    );
  }

  Widget _buildLoginButton() {
    return AppPrimaryButton(
      title: 'LOGIN'.tr,
      isDisabled: false,
      onPressed: () => controller.login(),
    );
  }

  Widget _buildRegisterButton() {
    return AppSecondaryButton(
      title: 'REGISTER_USER'.tr,
      isDisabled: false,
      onPressed: () {},
    );
  }

  Widget _buildButtonsRRSS() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        AppBaseSocialButton(
          onPressed: () {},
          assetImage: gmailLogoSvg,
        ),
        AppBaseSocialButton(
          onPressed: () {},
          assetImage: facebookLogoSVG,
        ),
        AppBaseSocialButton(
          onPressed: () {},
          assetImage: instagramLogoSVG,
        ),
      ],
    );
  }
}

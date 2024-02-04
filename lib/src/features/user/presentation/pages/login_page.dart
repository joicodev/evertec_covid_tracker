import 'package:evertec_covid_tracker/core/theme/app_theme.dart';
import 'package:evertec_covid_tracker/src/common/presentation/widgets/app_scaffold.dart';
import 'package:evertec_covid_tracker/src/common/presentation/widgets/base_pages_widget.dart';
import 'package:evertec_covid_tracker/src/features/user/presentation/controllers/user_controller.dart';
import 'package:evertec_covid_tracker/src/features/user/presentation/widgets/login_form_widget.dart';
import 'package:evertec_covid_tracker/src/features/user/presentation/widgets/login_header_widget.dart';
import 'package:flutter/material.dart';

class LoginPage extends GetViewBasePage<UserController> {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppScaffold(
      safeAreaTop: false,
      bodyIntoContainer: false,
      child: Column(
        children: [
          LoginHeaderWidget(),
          heightSpace24,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: defaultPaddingSize),
            child: LoginFormWidget(),
          ),
        ],
      ),
    );
  }
}

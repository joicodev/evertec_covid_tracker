import 'package:evertec_covid_tracker/core/theme/app_theme.dart';
import 'package:evertec_covid_tracker/src/common/presentation/widgets/base_pages_widget.dart';
import 'package:evertec_covid_tracker/src/common/presentation/widgets/inputs/text_form_field_widget.dart';
import 'package:evertec_covid_tracker/src/common/presentation/widgets/inputs/utils/app_input_parameters.dart';
import 'package:evertec_covid_tracker/src/common/presentation/widgets/inputs/utils/app_input_utils.dart';
import 'package:evertec_covid_tracker/src/features/user/presentation/controllers/user_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginFormWidget extends GetViewBasePage<UserController> {
  const LoginFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.userForm.formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormFieldWidget(
            parameters: AppInputParameters(
              isRequired: true,
              label: "${'DOCUMENT_TYPE'.tr}:",
              controller: controller.userForm.documentTypeController,
            ),
          ),
          heightSpace20,
          TextFormFieldWidget(
            parameters: AppInputParameters(
              isRequired: true,
              label: "${'DOCUMENT_NUMBER'.tr}:",
              controller: controller.userForm.documentNumberController,
            ),
          ),
          heightSpace20,
          TextFormFieldWidget(
            parameters: AppInputParameters(
              isRequired: true,
              label: "${'PASSWORD'.tr}:",
              inputType: AppInputType.password,
              controller: controller.userForm.passwordController,
            ),
          ),
        ],
      ),
    );
  }
}

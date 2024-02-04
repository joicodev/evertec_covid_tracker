import 'package:evertec_covid_tracker/core/theme/app_theme.dart';
import 'package:evertec_covid_tracker/src/common/presentation/extensions/padding_extension.dart';
import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatelessWidget {
  final String inputLabel;
  final TextEditingController controller;

  const TextFormFieldWidget({
    super.key,
    required this.inputLabel,
    required this.controller,
  });

  BorderRadius get _defaultBorder => BorderRadius.circular(8.0);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          inputLabel,
          style: AppTheme.style.contentCaptions.copyWith(
            color: AppTheme.colors.secondary,
          ),
        ).paddingLeft(12),
        heightSpace5,
        TextFormField(
          controller: controller,
          cursorColor: AppTheme.colors.secondary,
          decoration: InputDecoration(
            isDense: true,
            enabledBorder: OutlineInputBorder(
              borderRadius: _defaultBorder,
              borderSide: BorderSide(
                color: AppTheme.colors.inputDisabled,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: _defaultBorder,
              borderSide: BorderSide(
                color: AppTheme.colors.primary,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

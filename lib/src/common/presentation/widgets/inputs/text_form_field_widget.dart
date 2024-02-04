import 'package:evertec_covid_tracker/core/theme/app_theme.dart';
import 'package:evertec_covid_tracker/src/common/presentation/extensions/padding_extension.dart';
import 'package:evertec_covid_tracker/src/common/presentation/widgets/inputs/utils/app_input_utils.dart';
import 'package:evertec_covid_tracker/src/common/presentation/widgets/inputs/utils/app_input_validations.dart';
import 'package:flutter/material.dart';

import 'utils/app_input_parameters.dart';

class TextFormFieldWidget extends StatefulWidget {
  final AppInputParameters parameters;

  const TextFormFieldWidget({
    super.key,
    required this.parameters,
  });

  @override
  State<TextFormFieldWidget> createState() => _TextFormFieldWidgetState();
}

class _TextFormFieldWidgetState extends State<TextFormFieldWidget> {
  BorderRadius get _defaultBorder => BorderRadius.circular(8.0);

  AppInputParameters get _parameters => widget.parameters;

  InputBorder _defaultInputBorder({required Color colorBorderSide}) {
    return OutlineInputBorder(
      borderRadius: _defaultBorder,
      borderSide: BorderSide(color: colorBorderSide),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          _parameters.label,
          style: AppTheme.style.contentCaptions.copyWith(
            color: AppTheme.colors.secondary,
          ),
        ).paddingLeft(12),
        heightSpace5,
        TextFormField(
          controller: _parameters.controller,
          cursorColor: AppTheme.colors.secondary,
          textCapitalization: _parameters.textCapitalization,
          enabled: _parameters.isEnabled,
          readOnly: _parameters.isReadOnly,
          style: _parameters.style,
          textAlign: _parameters.textAlign,
          maxLength: _parameters.maxLength,
          autovalidateMode: _parameters.autoValidateMode,
          textInputAction: _parameters.textInputAction,
          obscureText: _parameters.obscureText,
          onChanged: _parameters.onChanged,
          inputFormatters: _parameters.inputFormatters,
          keyboardType: AppInputUtils.keyboardType(_parameters.inputType),
          validator: (String? value) => AppInputValidations.validate(
            value ?? "",
            widget.parameters,
          ),
          decoration: InputDecoration(
            isDense: true,
            prefixText: _parameters.prefixText,
            border: _defaultInputBorder(
              colorBorderSide: AppTheme.colors.inputDisabled,
            ),
            enabledBorder: _defaultInputBorder(
              colorBorderSide: AppTheme.colors.inputDisabled,
            ),
            focusedBorder: _defaultInputBorder(
              colorBorderSide: AppTheme.colors.primary,
            ),
          ),
          onTapOutside: (event) {
            FocusScopeNode currentFocus = FocusScope.of(context);
            if (!currentFocus.hasPrimaryFocus &&
                currentFocus.focusedChild != null) {
              FocusManager.instance.primaryFocus?.unfocus();
            }
          },
        ),
      ],
    );
  }
}

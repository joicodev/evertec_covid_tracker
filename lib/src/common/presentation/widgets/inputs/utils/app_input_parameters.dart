import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'app_input_utils.dart';

class AppInputParameters {
  final bool obscureText;
  final bool enableBorder;
  final bool isRequired;
  final Widget? suffixIcon;
  final AppInputType inputType;
  final TextInputAction? textInputAction;
  final String hintText;
  final String label;
  final TextEditingController controller;
  final VoidCallback? suffixOnPressed;
  final String? Function(String?)? validator;
  final List<TextInputFormatter>? inputFormatters;
  final InputDecoration decoration;
  final bool showEyeIcon;
  final bool showCancelIcon;
  final AutovalidateMode autoValidateMode;
  final FocusNode? nextNode;
  final ValueChanged<String>? onSubmitted;
  final TextInputType? keyboardType;
  final TextStyle? style;
  final Key? globalKey;
  final void Function(String)? onChanged;
  final bool disposeController;
  final int? maxLength;
  final TextAlign textAlign;
  final String? prefixText;
  final bool isReadOnly;
  final bool isEnabled;
  final String counterText;
  final TextCapitalization textCapitalization;

  AppInputParameters({
    Key? key,
    //required this.theme,
    this.label = "",
    this.textCapitalization = TextCapitalization.words,
    this.hintText = "",
    this.obscureText = false,
    this.enableBorder = true,
    this.isRequired = false,
    this.showEyeIcon = false,
    this.showCancelIcon = false,
    this.suffixIcon,
    this.inputType = AppInputType.text,
    this.textInputAction = TextInputAction.next,
    this.suffixOnPressed,
    this.validator,
    this.inputFormatters,
    this.nextNode,
    this.onSubmitted,
    this.keyboardType,
    this.style,
    this.globalKey,
    this.onChanged,
    this.maxLength,
    this.prefixText,
    this.textAlign = TextAlign.start,
    this.disposeController = true,
    this.isReadOnly = false,
    this.isEnabled = true,
    this.counterText = '',
    this.autoValidateMode = AutovalidateMode.onUserInteraction,
    InputDecoration? decoration,
    TextEditingController? controller,
  })  : decoration = decoration ?? const InputDecoration(),
        controller = controller ?? TextEditingController(),
        assert(
          !(showEyeIcon == showCancelIcon) || (!showEyeIcon || !showCancelIcon),
          'only one of them',
        ),
        super();

  AppInputParameters copyWith({
    bool? obscureText,
    bool? enableBorder,
    bool? isRequired,
    bool? showEyeIcon,
    bool? showCancelIcon,
    Widget? suffixIcon,
    AppInputType? inputType,
    TextInputAction? textInputAction,
    String? hintText,
    String? label,
    TextEditingController? controller,
    VoidCallback? suffixOnPressed,
    String? Function(String?)? validator,
    List<TextInputFormatter>? inputFormatters,
    InputDecoration? decoration,
    AutovalidateMode? autoValidateMode,
    ValueChanged<String>? onSubmitted,
    TextInputType? keyboardType,
    TextStyle? style,
    Key? globalKey,
    void Function(String)? onChanged,
    bool? disposeController,
    int? maxLength,
    TextAlign? textAlign,
    String? prefixText,
    bool? isReadOnly,
    bool? isEnabled,
    String? counterText,
    TextCapitalization? textCapitalization,
  }) {
    return AppInputParameters(
      style: style,
      textCapitalization: textCapitalization ?? this.textCapitalization,
      counterText: counterText ?? this.counterText,
      prefixText: prefixText ?? this.prefixText,
      textAlign: textAlign ?? this.textAlign,
      maxLength: maxLength ?? this.maxLength,
      nextNode: nextNode,
      isEnabled: isEnabled ?? this.isEnabled,
      isReadOnly: isReadOnly ?? this.isReadOnly,
      globalKey: globalKey ?? this.globalKey,
      onSubmitted: onSubmitted,
      keyboardType: keyboardType ?? this.keyboardType,
      //theme: theme ?? this.theme,
      obscureText: obscureText ?? this.obscureText,
      enableBorder: enableBorder ?? this.enableBorder,
      isRequired: isRequired ?? this.isRequired,
      showEyeIcon: showEyeIcon ?? this.showEyeIcon,
      showCancelIcon: showCancelIcon ?? this.showCancelIcon,
      suffixIcon: suffixIcon ?? this.suffixIcon,
      inputType: inputType ?? this.inputType,
      textInputAction: textInputAction ?? this.textInputAction,
      hintText: hintText ?? this.hintText,
      label: label ?? this.label,
      controller: controller ?? this.controller,
      suffixOnPressed: suffixOnPressed ?? this.suffixOnPressed,
      validator: validator ?? this.validator,
      inputFormatters: inputFormatters ?? this.inputFormatters,
      decoration: decoration ?? this.decoration,
      autoValidateMode: autoValidateMode ?? this.autoValidateMode,
      onChanged: onChanged ?? this.onChanged,
      disposeController: disposeController ?? this.disposeController,
    );
  }
}

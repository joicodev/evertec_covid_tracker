import 'package:evertec_covid_tracker/core/theme/app_theme.dart';
import 'package:flutter/material.dart';

class AppSecondaryButton extends StatelessWidget {
  final String title;
  final bool? isDisabled;
  final void Function()? onPressed;

  const AppSecondaryButton({
    required this.title,
    this.isDisabled,
    this.onPressed,
    super.key,
  });

  bool get _isDisabled {
    return isDisabled != null ? isDisabled! : onPressed == null;
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: _isDisabled ? null : onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Text(
          title,
          style: AppTheme.style.ctaText.copyWith(
            color: AppTheme.colors.black,
            decoration: TextDecoration.underline,
          ),
        ),
      ),
    );
  }
}

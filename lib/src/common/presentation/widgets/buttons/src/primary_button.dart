import 'package:evertec_covid_tracker/core/theme/app_theme.dart';
import 'package:flutter/material.dart';

class AppPrimaryButton extends StatelessWidget {
  final String title;
  final bool? isDisabled;
  final void Function()? onPressed;

  const AppPrimaryButton({
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
    return FilledButton(
      onPressed: _isDisabled ? null : onPressed,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
          _isDisabled
              ? AppTheme.colors.statusDisabled
              : AppTheme.colors.primary,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Text(
          title,
          style: AppTheme.style.ctaButton.copyWith(
            color: AppTheme.colors.white,
          ),
        ),
      ),
    );
  }
}

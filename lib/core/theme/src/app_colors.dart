part of app_theme;

abstract class AppColors {
  Color get inputDisabled;
  Color get cardShadow;
  Color get cardBackground;
  Color get generalPrimary;
  Color get generalSecondary;
  Color get secondary;
  Color get scaffold;
  Color get customGrey;
  Color get statusDisabled;
  Color get textContent;
  Color get backgroundDisabled;
  Color get white;
  Color get black;
  Color get transparent;
  Color get generalLogout;
  Color get success;
  Color get error;
}

class LightColors implements AppColors {
  @override
  Color get inputDisabled => const Color(0xFFdddddd);

  @override
  Color get customGrey => const Color(0xFF212328);

  @override
  Color get generalPrimary => const Color(0xFF212328);

  @override
  Color get generalSecondary => const Color(0xFF83DFAE);

  @override
  Color get scaffold => const Color(0xFFFFFFFF);

  @override
  Color get secondary => const Color(0xFF8B611B);

  @override
  Color get black => Colors.black;

  @override
  Color get white => Colors.white;

  @override
  Color get transparent => Colors.transparent;

  @override
  Color get statusDisabled => const Color(0xFFf0f0f0);

  @override
  Color get textContent => const Color(0xFF444444);

  @override
  Color get cardBackground => const Color(0xFFF3F8FF);

  @override
  Color get cardShadow => const Color.fromRGBO(0, 0, 0, 0.08);

  @override
  Color get generalLogout => const Color(0xFFFF7975);

  @override
  Color get success => const Color(0xFF09BF1A);

  @override
  Color get error => const Color(0xFFFF0000);

  @override
  Color get backgroundDisabled => const Color(0xFFF0F0F0);
}

/*class DarkColors implements AppColors {
  @override
  Color get customGrey => const Color(0xFF2f2f2f);

  @override
  Color get generalPrimary => const Color(0xFF7DB2ED);

  @override
  Color get scaffold => const Color(0xFFF6F6F6);

  @override
  Color get secondary => const Color(0xFF8B611B);

  @override
  Color get black => Colors.black;

  @override
  Color get white => Colors.white;

  @override
  Color get transparent => Colors.transparent;

  @override
  Color get statusDisabled => const Color(0xFFCCCCCC);

  @override
  // TODO: implement textContent
  Color get textContent => const Color(0xFFCCCCCC);
}*/

part of app_theme;

abstract class AppColors {
  Color get inputDisabled;
  Color get cardShadow;
  Color get cardBackground;
  Color get primary;
  Color get secondary;
  Color get scaffold;
  Color get customGrey;
  Color get statusDisabled;
  Color get textContent;
  Color get white;
  Color get black;
  Color get transparent;
  Color get success;
  Color get error;
}

class LightColors implements AppColors {
  @override
  Color get black => Colors.black;

  @override
  Color get white => Colors.white;

  @override
  Color get success => const Color(0xFF09BF1A);

  @override
  Color get error => const Color(0xFFFF0000);

  @override
  Color get primary => const Color(0xFFed8429);

  @override
  Color get secondary => const Color(0xFF212328);

  @override
  Color get transparent => Colors.transparent;

  @override
  Color get scaffold => const Color(0xFFFFFFFF);

  @override
  Color get inputDisabled => const Color(0xFFdddddd);

  @override
  Color get customGrey => const Color(0xFF404040);

  @override
  Color get statusDisabled => const Color(0xFFf0f0f0);

  @override
  Color get textContent => const Color(0xFF444444);

  @override
  Color get cardBackground => const Color(0xFFF3F8FF);

  @override
  Color get cardShadow => const Color.fromRGBO(0, 0, 0, 0.08);
}

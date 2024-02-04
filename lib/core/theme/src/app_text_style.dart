part of app_theme;

class AppFontSize {
  double f10 = 10;
  double f12 = 12;
  double f14 = 14;
  double f16 = 16;
  double f18 = 18;
  double f20 = 20;
  double f22 = 20;
  double f24 = 24;
  double f28 = 28;
}

class AppStyle {
  static final AppFontSize _fontSize = AppFontSize();

  static AppFontSize get fontSize => _fontSize;

  /// Body/Bold
  TextStyle bodyBold = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: fontSize.f12,
    fontFamily: 'Roboto',
  );

  /// CTA/Button
  TextStyle ctaButton = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: fontSize.f16,
    fontFamily: 'Roboto',
  );

  /// CTA/Text
  TextStyle ctaText = TextStyle(
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w400,
    fontSize: fontSize.f16,
  );

  /// Headings title
  TextStyle headingsTitle = TextStyle(
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w600,
    fontSize: fontSize.f20,
  );

  /// Headings H1
  TextStyle headings1 = TextStyle(
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w400,
    fontSize: fontSize.f24,
  );

  /// Headings H2
  TextStyle headings2 = TextStyle(
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w400,
    fontSize: fontSize.f20,
  );

  /// Headings H3
  TextStyle headings3 = TextStyle(
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w300,
    fontSize: fontSize.f16,
  );

  /// Headings H4
  TextStyle headings4 = TextStyle(
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w400,
    fontSize: fontSize.f12,
  );

  /// Content/Captions
  TextStyle contentCaptions = TextStyle(
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w400,
    fontSize: fontSize.f10,
  );

  /// Content/Paragraph/Regular
  TextStyle contentParagraphRegular = TextStyle(
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w300,
    fontSize: fontSize.f12,
  );

  /// Content/Paragraph
  TextStyle contentParagraph = TextStyle(
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w700,
    fontSize: fontSize.f18,
  );

  /// Input/Placeholder
  TextStyle inputPlaceholder = TextStyle(
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w400,
    fontSize: fontSize.f14,
  );

  /// Chips
  TextStyle generalOrChip = TextStyle(
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w600,
    fontSize: fontSize.f12,
  );

  /*TextStyle custom = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: fontSize.f18,
    fontFamily: 'Roboto',
  );*/

  //////// ---------
  /*TextStyle boldStyle = const TextStyle(
    fontWeight: FontWeight.bold,
    fontFamily: 'Montserrat',
  );

// SemiBold = FontWeight.w600,
  TextStyle w600Style = const TextStyle(
    fontWeight: FontWeight.w600,
    fontFamily: 'Montserrat',
  );

  TextStyle w500Style = const TextStyle(
    fontWeight: FontWeight.w500,
    fontFamily: 'Montserrat',
  );

// Regular = FontWeight.w400,
  TextStyle w400Style = const TextStyle(
    fontWeight: FontWeight.w400,
    fontFamily: 'Montserrat',
  );

  TextStyle w700Style = const TextStyle(
    fontWeight: FontWeight.w700,
    fontFamily: 'Montserrat',
  );*/
}

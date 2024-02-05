import 'package:double_back_to_close_app/double_back_to_close_app.dart';
import 'package:evertec_covid_tracker/core/theme/app_theme.dart';
import 'package:flutter/material.dart';

class AppScaffold extends StatelessWidget {
  final Widget child;
  final PreferredSizeWidget? appBar;
  final bool safeAreaTop;
  final Decoration? decoration;
  final EdgeInsets? minimum;
  final bool resizeToAvoidBottomInset;
  final bool bodyIntoContainer;
  final bool safeAreaBottom;
  final AssetImage? backgroundImage;
  final LinearGradient? gradient;
  final Widget? bottomNavigationBar;
  final Widget? titleAppBar;
  final List<Widget>? actionsAppBar;
  final Widget? goBackButton;
  final bool centerTitleAppBar;
  final String widgetName;
  final String? textDoubleBackToCloseApp;
  final Widget? floatingActionButton;
  final FloatingActionButtonLocation? floatingActionButtonLocation;

  const AppScaffold({
    required this.child,
    this.appBar,
    this.minimum,
    this.decoration,
    this.backgroundImage,
    this.gradient,
    this.bottomNavigationBar,
    this.titleAppBar,
    this.actionsAppBar,
    this.goBackButton,
    this.centerTitleAppBar = true,
    this.safeAreaTop = true,
    this.safeAreaBottom = true,
    this.bodyIntoContainer = true,
    this.resizeToAvoidBottomInset = false,
    this.widgetName = '',
    this.floatingActionButton,
    this.floatingActionButtonLocation,
    this.textDoubleBackToCloseApp,
    Key? key,
  }) : super(key: key);

  PreferredSizeWidget? _appBar(BuildContext context) {
    if (titleAppBar != null || actionsAppBar != null || goBackButton != null) {
      return AppBar(
        titleSpacing: 0,
        title: titleAppBar,
        actions: actionsAppBar,
        automaticallyImplyLeading: false,
        leading: goBackButton,
        centerTitle: centerTitleAppBar,
        forceMaterialTransparency: true,
        backgroundColor: Colors.transparent,
      );
    }

    return null;
  }

  Widget _buildScaffoldBody() {
    Widget childWidget = child;
    if (bodyIntoContainer == true) {
      childWidget = Container(
        decoration: decoration,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: defaultPaddingSize),
          child: childWidget,
        ),
      );
    }

    if (textDoubleBackToCloseApp != null) {
      return DoubleBackToCloseApp(
        snackBar: SnackBar(
          duration: const Duration(milliseconds: 1500),
          backgroundColor: AppTheme.colors.primary,
          content: Text(
            textDoubleBackToCloseApp!,
            style: AppTheme.style.contentParagraphRegular.copyWith(
              color: AppTheme.colors.white,
            ),
          ),
        ),
        child: childWidget,
      );
    }

    return childWidget;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.colors.scaffold,
      extendBodyBehindAppBar: true,
      appBar: appBar ?? _appBar(context),
      resizeToAvoidBottomInset: resizeToAvoidBottomInset,
      bottomNavigationBar: bottomNavigationBar,
      floatingActionButton: floatingActionButton,
      floatingActionButtonLocation: floatingActionButtonLocation,
      body: SafeArea(
        left: false,
        right: false,
        top: safeAreaTop,
        bottom: safeAreaBottom,
        minimum: minimum ?? const EdgeInsets.only(bottom: 20),
        child: _buildScaffoldBody(),
      ),
    );
  }
}

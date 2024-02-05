import 'package:evertec_covid_tracker/features/user/presentation/controllers/user_binding.dart';
import 'package:evertec_covid_tracker/features/user/presentation/pages/login_page.dart';
import 'package:evertec_covid_tracker/features/splash_page.dart';
import 'package:get/get.dart';

import 'routes_path.dart';

class PagesManager {
  PagesManager._();
  static final List<GetPage> pages = [
    GetPage(
      name: RoutesPath.splash,
      page: () => const SplashPage(),
    ),
    GetPage(
      name: RoutesPath.signIn,
      page: () => const LoginPage(),
      binding: UserBinding(),
    ),
  ];
}

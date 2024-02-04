import 'package:evertec_covid_tracker/src/splash_page.dart';
import 'package:get/get.dart';

import 'routes_path.dart';

class PagesManager {
  PagesManager._();
  static final List<GetPage> pages = [
    GetPage(
      name: RoutesPath.splash,
      page: () => const SplashPage(),
    ),
  ];
}

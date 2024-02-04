import 'package:evertec_covid_tracker/src/common/controllers/main_binding.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';

import 'core/config/dependency_creator.dart';
import 'core/localizations/repositories/localization_repository.dart';
import 'core/router/page_manager.dart';
import 'core/router/routes_path.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
  );

  await DependencyCreator.init();
  runApp(const EvertecCovidTrackerApp());
}

class EvertecCovidTrackerApp extends StatelessWidget {
  const EvertecCovidTrackerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Evertec Covid Tracker',
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      builder: EasyLoading.init(),
      initialBinding: MainBinding(),
      initialRoute: RoutesPath.splash,
      getPages: PagesManager.pages,
      locale: Get.deviceLocale,
      fallbackLocale: const Locale('es'),
      supportedLocales: LocalizationRepository.supportedLocales,
      localeResolutionCallback: LocalizationRepository.localeResolutionCallback,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
    );
  }
}

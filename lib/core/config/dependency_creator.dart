import 'package:evertec_covid_tracker/core/localizations/repositories/localization_repository.dart';
import 'package:evertec_covid_tracker/features/common/presentation/controllers/main_controller.dart';
import 'package:get/get.dart';

import 'config_app.dart';

class DependencyCreator {
  static init() async {
    await LocalizationRepository.initLanguages();
    await ConfigApp.loadPackageInfo();

    // Initialize and manage the MainController as a permanent dependency.
    Get.put(MainController(), permanent: true);
  }
}

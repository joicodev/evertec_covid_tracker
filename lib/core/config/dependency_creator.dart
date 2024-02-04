import 'package:evertec_covid_tracker/core/localizations/repositories/localization_repository.dart';

class DependencyCreator {
  static init() async {
    await LocalizationRepository.initLanguages();
  }
}

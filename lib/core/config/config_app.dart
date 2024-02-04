import 'package:flutter/services.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:toml/toml.dart';

class ConfigApp {
  static late String appName;
  static late String version;
  static late String buildNumber;
  static late List<String> documentsType;

  static Future<void> loadConfigFromToml() async {
    const filePath = "assets/toml/config_app.toml";
    final envAppConfig = await rootBundle.loadString(filePath);
    final appConfig = TomlDocument.parse(envAppConfig).toMap();
    documentsType = List.from(appConfig['documentsType']);
  }

  static Future<void> loadPackageInfo() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    appName = packageInfo.appName;
    version = packageInfo.version;
    buildNumber = packageInfo.buildNumber;
  }
}

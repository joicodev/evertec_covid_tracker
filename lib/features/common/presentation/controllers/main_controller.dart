import 'dart:convert';
import 'dart:math';
import 'package:evertec_covid_tracker/core/config/config_app.dart';
import 'package:evertec_covid_tracker/core/router/routes_path.dart';
import 'package:evertec_covid_tracker/features/user/domain/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'getx_base_controller.dart';

class MainController extends GetxBaseController {
  final Rxn<bool> _isDark = Rxn();
  final RxInt splashCounter = 0.obs;
  final List<UserModel> _allUsers = [];

  @override
  void onInit() {
    super.onInit();
    loadRequiredInformation();
  }

  ThemeMode get themeMode {
    if (_isDark.value != null) {
      return _isDark.value! ? ThemeMode.dark : ThemeMode.light;
    }

    return ThemeMode.system;
  }

  void changeTheme() {
    Get.changeTheme(Get.isDarkMode ? ThemeData.light() : ThemeData.dark());
    _isDark.value = Get.isDarkMode;
  }

  Future<void> loadRequiredInformation() async {
    await _increaseCounter(30);
    await ConfigApp.loadConfigFromToml();
    await _loadUsers();
    await _increaseCounter(30);
    Get.offAllNamed(RoutesPath.signIn);
  }

  Future<void> _loadUsers() async {
    final rawUsers = await rootBundle.loadString("assets/json/users.json");
    final users = List.from(json.decode(rawUsers)['users']);
    for (var user in users) {
      _allUsers.add(UserModel.fromJson(user));
      await _increaseCounter(40 ~/ users.length);
    }
  }

  Future<void> _increaseCounter(int target) async {
    final old = splashCounter.value;
    while (splashCounter.value < (old + target)) {
      if (splashCounter.value <= 99) {
        final dynamicDelay = Random().nextInt(50);
        await Future.delayed(Duration(milliseconds: dynamicDelay));
        splashCounter.value += 1;
      }
    }
  }

  double get loadingValue => (splashCounter.value / 100);

  bool checkUserIsValid(String docType, String docId, String password) {
    UserModel? user = _allUsers.firstWhereOrNull((user) {
      return user.documentType == docType &&
          user.id == docId &&
          user.password == password;
    });

    return user != null;
  }
}

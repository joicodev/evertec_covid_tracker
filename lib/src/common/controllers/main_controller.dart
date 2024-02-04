import 'dart:math';
import 'package:evertec_covid_tracker/core/config/config_app.dart';
import 'package:evertec_covid_tracker/core/router/routes_path.dart';
import 'package:get/get.dart';
import 'getx_base_controller.dart';

class MainController extends GetxBaseController {
  final RxInt splashCounter = 0.obs;
  final RxBool _loadedDependencies = false.obs;

  @override
  void onInit() {
    super.onInit();
    loadRequiredInformation();
  }

  Future<void> loadRequiredInformation() async {
    await increaseNumber(30);
    await ConfigApp.loadConfigFromToml();
    await increaseNumber(40);
    await increaseNumber(30);
    Get.offAllNamed(RoutesPath.signIn);
  }

  Future<void> increaseNumber(int target) async {
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
}

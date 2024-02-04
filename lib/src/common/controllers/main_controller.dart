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
    await increaseNumber(20);
    await increaseNumber(30);
    await increaseNumber(40);
    await increaseNumber(10);
  }

  Future<void> increaseNumber(int target) async {
    final old = splashCounter.value;
    while (splashCounter.value < (old + target)) {
      await Future.delayed(const Duration(milliseconds: 200));
      splashCounter.value += 1;
    }
  }

  double get loadingValue => (splashCounter.value / 100);
}

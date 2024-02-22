import 'package:get/get.dart';

import '../controllers/gas_controller.dart';

class GasBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GasController>(
      () => GasController(),
    );
  }
}

import 'package:get/get.dart';

import '../controllers/gas_cylinder_safety_controller.dart';

class GasCylinderSafetyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GasCylinderSafetyController>(
      () => GasCylinderSafetyController(),
    );
  }
}

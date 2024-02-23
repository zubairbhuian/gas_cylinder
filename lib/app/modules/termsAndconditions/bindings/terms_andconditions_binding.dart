import 'package:get/get.dart';

import '../controllers/terms_andconditions_controller.dart';

class TermsAndconditionsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TermsAndconditionsController>(
      () => TermsAndconditionsController(),
    );
  }
}

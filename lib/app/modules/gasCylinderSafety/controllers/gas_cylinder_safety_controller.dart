import 'package:gas_cylinder/app/core/services/controller/base_controller.dart';
import 'package:gas_cylinder/app/core/utils/logger.dart';
import 'package:gas_cylinder/app/core/utils/urls.dart';
import 'package:gas_cylinder/app/data/models/base/base_model.dart';
import 'package:gas_cylinder/app/data/models/gas_cylinder_safety_model.dart';
import 'package:get/get.dart';

class GasCylinderSafetyController extends GetxController {
  List<GasCylinderSafetyModel> cylinderSafety = [];

  getGasSafety() async {
    BaseModel res = await BaseController.to.apiService
        .makeGetRequest(Urls.gasCylinderSafety);
    if (res.statusCode == 200) {
      cylinderSafety = (res.data['data'] as List)
          .map((item) => GasCylinderSafetyModel.fromJson(item))
          .toList();
      update();
      kLogger.e(cylinderSafety.length);
    }
  }

  @override
  void onInit() {
    getGasSafety();
    super.onInit();
  }
}

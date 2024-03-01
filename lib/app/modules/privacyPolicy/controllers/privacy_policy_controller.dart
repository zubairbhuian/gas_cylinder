import 'package:gas_cylinder/app/core/services/controller/base_controller.dart';
import 'package:gas_cylinder/app/core/utils/logger.dart';
import 'package:gas_cylinder/app/core/utils/urls.dart';
import 'package:gas_cylinder/app/data/models/base/base_model.dart';
import 'package:gas_cylinder/app/data/models/privacy_policy_model.dart';
import 'package:get/get.dart';

class PrivacyPolicyController extends GetxController {
  List<PrivacyPolicyModel> privacyPolicyList = [];

  getPrivacyPolicy() async {
    BaseModel res =
        await BaseController.to.apiService.makeGetRequest(Urls.privacyPolicy);
    if (res.statusCode == 200) {
      privacyPolicyList = (res.data['data'] as List)
          .map((item) => PrivacyPolicyModel.fromJson(item))
          .toList();
      update();
      kLogger.e(privacyPolicyList.length);
    }
  }

  @override
  void onInit() {
    getPrivacyPolicy();
    super.onInit();
  }
}

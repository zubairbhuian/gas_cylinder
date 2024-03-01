import 'package:gas_cylinder/app/core/services/controller/base_controller.dart';
import 'package:gas_cylinder/app/core/utils/logger.dart';
import 'package:gas_cylinder/app/core/utils/urls.dart';
import 'package:gas_cylinder/app/data/models/base/base_model.dart';
import 'package:gas_cylinder/app/data/models/terms_and_condition_model.dart';
import 'package:get/get.dart';

class TermsAndconditionsController extends GetxController {
  List<TermsAndConditionModel> termsAndConditionList = [];

  getTermsAndCondition() async {
    BaseModel res = await BaseController.to.apiService
        .makeGetRequest(Urls.termsAndConditions);
    if (res.statusCode == 200) {
      termsAndConditionList = (res.data['data'] as List)
          .map((item) => TermsAndConditionModel.fromJson(item))
          .toList();
      update();
      kLogger.e(termsAndConditionList.length);
    }
  }

  @override
  void onInit() {
    getTermsAndCondition();
    super.onInit();
  }
}

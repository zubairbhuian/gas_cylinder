import 'package:gas_cylinder/app/core/services/controller/base_controller.dart';
import 'package:gas_cylinder/app/core/utils/logger.dart';
import 'package:gas_cylinder/app/core/utils/urls.dart';
import 'package:gas_cylinder/app/data/models/base/base_model.dart';
import 'package:gas_cylinder/app/data/models/faq_model.dart';
import 'package:get/get.dart';

class FaqsController extends GetxController {
  List<FAQModel> faqList = [];

  getFAQ() async {
    BaseModel res =
        await BaseController.to.apiService.makeGetRequest(Urls.faqs);
    if (res.statusCode == 200) {
      faqList = (res.data['data'] as List)
          .map((item) => FAQModel.fromJson(item))
          .toList();
      update();
      kLogger.e(faqList.length);
    }
  }

  @override
  void onInit() {
    getFAQ();
    super.onInit();
  }
}

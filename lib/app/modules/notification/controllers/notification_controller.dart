import 'package:gas_cylinder/app/core/services/controller/base_controller.dart';
import 'package:gas_cylinder/app/core/utils/logger.dart';
import 'package:gas_cylinder/app/core/utils/urls.dart';
import 'package:gas_cylinder/app/data/models/base/base_model.dart';
import 'package:gas_cylinder/app/data/models/notification_model.dart';
import 'package:get/get.dart';

class NotificationController extends GetxController {
  List<NotificationModel> notificationList = [];

  getNotification() async {
    BaseModel res =
        await BaseController.to.apiService.makeGetRequest(Urls.notification);
    if (res.statusCode == 200) {
      notificationList = (res.data['data'] as List)
          .map((item) => NotificationModel.fromJson(item))
          .toList();
      update();
      kLogger.e(notificationList.length);
    }
  }

  @override
  void onInit() {
    getNotification();
    super.onInit();
  }
}

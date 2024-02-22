import 'package:gas_cylinder/app/modules/gas/controllers/gas_controller.dart';
import 'package:gas_cylinder/app/modules/notification/controllers/notification_controller.dart';
import 'package:gas_cylinder/app/modules/order/controllers/order_controller.dart';
import 'package:gas_cylinder/app/modules/profile/controllers/profile_controller.dart';
import 'package:get/get.dart';

import '../controllers/entry_point_controller.dart';

class EntryPointBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EntryPointController>(
      () => EntryPointController(),
    );
    Get.lazyPut<GasController>(
      () => GasController(),
    );
    Get.lazyPut<ProfileController>(
      () => ProfileController(),
    );
    Get.lazyPut<OrderController>(
      () => OrderController(),
    );
    Get.lazyPut<NotificationController>(
      () => NotificationController(),
    );
  }
}

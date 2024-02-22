import 'package:gas_cylinder/app/data/models/base/nav_model.dart';
import 'package:gas_cylinder/app/modules/gas/views/gas_view.dart';
import 'package:gas_cylinder/app/modules/notification/views/notification_view.dart';
import 'package:gas_cylinder/app/modules/order/views/order_view.dart';
import 'package:gas_cylinder/app/modules/profile/views/profile_view.dart';
import 'package:get/get.dart';

class EntryPointController extends GetxController {
  int pageIndex = 0;

  final pages = [
    const GasView(),
    const ProfileView(),
    const OrderView(),
    const NotificationView()
  ];
  List<NavModel> itemsList = [
    NavModel(
        icon: 'assets/icons/bottom_nav/gas.svg',
        activeIcon: 'assets/icons/bottom_nav/gas_active.svg',
        label: 'Gas'),
    NavModel(
        icon: 'assets/icons/bottom_nav/profile.svg',
        activeIcon: 'assets/icons/bottom_nav/profile_active.svg',
        label: 'Profile'),
    NavModel(
        icon: 'assets/icons/bottom_nav/order.svg',
        activeIcon: 'assets/icons/bottom_nav/order_active.svg',
        label: 'Order'),
    NavModel(
        icon: 'assets/icons/bottom_nav/notification.svg',
        activeIcon: 'assets/icons/bottom_nav/notification_active.svg',
        label: 'Notification'),
  ];
}

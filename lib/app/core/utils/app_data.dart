import 'package:gas_cylinder/app/data/models/base/drawer_Item_model.dart';

class AppData {
  static List<DrawerItemModel> drawerItemList = [
    DrawerItemModel(
        icon: 'assets/icons/drawer/history.svg',
        route: '/orders-history',
        title: 'Your Orders History'),
    DrawerItemModel(
        icon: 'assets/icons/drawer/gas_cylinder_safety.svg',
        route: '/gas-cylinder-safety',
        title: 'Gas Cylinder Safety'),
    DrawerItemModel(
        icon: 'assets/icons/drawer/settings.svg',
        route: '/settings',
        title: 'Settings'),
    DrawerItemModel(
        icon: 'assets/icons/drawer/get_help.svg',
        route: '/get-help',
        title: 'Get Help'),
    DrawerItemModel(
        icon: 'assets/icons/drawer/faqs.svg', route: '/faqs', title: 'FAQs'),
    DrawerItemModel(
        icon: 'assets/icons/drawer/privacy_policy.svg',
        route: '/privacy-policy',
        title: 'Privacy Policy'),
    DrawerItemModel(
        icon: 'assets/icons/drawer/terms_and_conditions.svg',
        route: '/terms-andconditions',
        title: 'Terms & conditions'),
  ];
}

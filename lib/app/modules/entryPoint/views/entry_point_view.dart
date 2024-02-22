import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gas_cylinder/app/core/config/color.dart';
import 'package:gas_cylinder/app/core/utils/logger.dart';
import 'package:gas_cylinder/app/data/models/base/nav_model.dart';
import 'package:get/get.dart';
import '../controllers/entry_point_controller.dart';

class EntryPointView extends GetView<EntryPointController> {
  const EntryPointView({super.key});
  @override
  Widget build(BuildContext context) {
    return GetBuilder<EntryPointController>(builder: (controller) {
      List<NavModel> navData = controller.itemsList;
      return Scaffold(
          body: IndexedStack(
            index: controller.pageIndex,
            children: controller.pages,
          ),
          bottomNavigationBar: BottomNavigationBar(
            onTap: (index) {
              controller.pageIndex = index;
              controller.update();
            },
            currentIndex: controller.pageIndex,
            selectedLabelStyle:
                const TextStyle(fontWeight: FontWeight.w500, fontSize: 13),
            unselectedLabelStyle:
                const TextStyle(fontWeight: FontWeight.w400, fontSize: 13),
            selectedItemColor: kSecondaryColor,
            unselectedItemColor: kTextColorLight,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            items: List.generate(navData.length, (index) {
              // ? Bottom nav bar
              return BottomNavigationBarItem(
                  icon: SvgPicture.asset(navData[index].icon),
                  activeIcon:
                      SvgPicture.asset(navData[index].activeIcon),
                  label: navData[index].label);
            }),
          ));
    });
  }
}

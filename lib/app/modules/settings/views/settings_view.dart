import 'package:flutter/material.dart';
import 'package:gas_cylinder/app/core/config/color.dart';
import 'package:gas_cylinder/app/modules/settings/widgets/settings_item.dart';
import 'package:gas_cylinder/app/widgets/appbar.dart';
import 'package:get/get.dart';
import '../controllers/settings_controller.dart';
import 'change_password_view.dart';
import 'notification_setting_view.dart';

class SettingsView extends GetView<SettingsController> {
  const SettingsView({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const CustomAppBar(
          title: Text('Setttings'),
          fgColor: kWhite,
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
          child: Column(
            children: [
              SettingsItem(
                onTap: () {
                  Get.to(() => const ChangePasswordView());
                },
                title: 'Change Password',
                icon: 'assets/icons/settings/lock.svg',
              ),
              SettingsItem(
                onTap: () {
                   Get.to(() => const NotificationSettingView());
                },
                title: 'Notifications',
                icon: 'assets/icons/settings/bell.svg',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

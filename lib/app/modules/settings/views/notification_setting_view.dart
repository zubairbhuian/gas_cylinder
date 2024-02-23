import 'package:flutter/material.dart';
import 'package:gas_cylinder/app/core/config/color.dart';
import 'package:gas_cylinder/app/widgets/appbar.dart';

import 'package:get/get.dart';

import '../controllers/settings_controller.dart';

class NotificationSettingView extends GetView<SettingsController> {
  const NotificationSettingView({super.key});
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          title: Text('Notification Setting'),
          fgColor: kWhite,
        ),
        body: Center(
          child: Text(
            'NotificationSettingView is working',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}

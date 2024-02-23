import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/settings_controller.dart';

class SettingsView extends GetView<SettingsController> {
  const SettingsView({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('SettingsView'),
          centerTitle: true,
        ),
        body: const Center(
          child: Text(
            'SettingsView is working',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/gas_cylinder_safety_controller.dart';

class GasCylinderSafetyView extends GetView<GasCylinderSafetyController> {
  const GasCylinderSafetyView({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('GasCylinderSafetyView'),
          centerTitle: true,
        ),
        body: const Center(
          child: Text(
            'GasCylinderSafetyView is working',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}

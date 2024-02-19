import 'package:flutter/material.dart';
import 'package:gas_cylinder/app/core/config/color.dart';

import 'package:get/get.dart';

import '../controllers/entry_point_controller.dart';

class EntryPointView extends GetView<EntryPointController> {
  const EntryPointView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: const Text('EntryPointView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'EntryPointView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

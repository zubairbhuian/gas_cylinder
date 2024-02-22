import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/gas_controller.dart';

class GasView extends GetView<GasController> {
  const GasView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GasView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'GasView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/get_help_controller.dart';

class GetHelpView extends GetView<GetHelpController> {
  const GetHelpView({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('GetHelpView'),
          centerTitle: true,
        ),
        body: const Center(
          child: Text(
            'GetHelpView is working',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}

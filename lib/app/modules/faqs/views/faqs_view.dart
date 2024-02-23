import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/faqs_controller.dart';

class FaqsView extends GetView<FaqsController> {
  const FaqsView({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('FaqsView'),
          centerTitle: true,
        ),
        body: const Center(
          child: Text(
            'FaqsView is working',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}

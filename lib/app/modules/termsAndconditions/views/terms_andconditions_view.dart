import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/terms_andconditions_controller.dart';

class TermsAndconditionsView extends GetView<TermsAndconditionsController> {
  const TermsAndconditionsView({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('TermsAndconditionsView'),
          centerTitle: true,
        ),
        body: const Center(
          child: Text(
            'TermsAndconditionsView is working',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}

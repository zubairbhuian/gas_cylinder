import 'package:flutter/material.dart';
import 'package:gas_cylinder/app/core/config/color.dart';
import 'package:gas_cylinder/app/modules/privacyPolicy/widgets/privacy_policy_card.dart';
import 'package:gas_cylinder/app/widgets/app_indecator.dart';
import 'package:gas_cylinder/app/widgets/appbar.dart';

import 'package:get/get.dart';

import '../controllers/privacy_policy_controller.dart';

class PrivacyPolicyView extends GetView<PrivacyPolicyController> {
  const PrivacyPolicyView({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: const CustomAppBar(
            title: Text('Privacy Policy'),
            fgColor: kWhite,
          ),
          body: GetBuilder<PrivacyPolicyController>(builder: (context) {
            var data = context.privacyPolicyList;
            if (data.isNotEmpty) {
              return SingleChildScrollView(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: List.generate(
                      data.length,
                      (index) => PrivacyPolicyCard(
                          title: data[index].title,
                          description: data[index].description)),
                ),
              );
            }
            return const Center(
              child: AppIndecator(),
            );
          })),
    );
  }
}

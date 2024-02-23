import 'package:flutter/material.dart';
import 'package:gas_cylinder/app/core/config/color.dart';
import 'package:gas_cylinder/app/core/config/style.dart';
import 'package:gas_cylinder/app/core/utils/int_extensions.dart';
import 'package:gas_cylinder/app/widgets/appbar.dart';

import 'package:get/get.dart';

import '../controllers/terms_andconditions_controller.dart';

class TermsAndconditionsView extends GetView<TermsAndconditionsController> {
  const TermsAndconditionsView({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const CustomAppBar(
          title: Text('Terms & Conditions'),
          fgColor: kWhite,
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
          child: Column(
            children: [
              Text(
                'These Terms Of Services positioned to offer bespoke services at competitive prices without sacrificing. Lorem ipsum dolor sit amet consectetur adipiscing elit dapibus ornare. Lorem ipsum dolor sit amet consectetur adipiscing elit dapibus ornare',
                style: kBodyMedium.copyWith(color: kTextColorLight),
              ),
              15.height,
              Text(
                'Please read the Of Services positioned to offer bespoke services at competitive prices.',
                style: kBodyMedium.copyWith(color: kTextColorLight),
              ),
              15.height,
              Text(
                'Applicability & Acceptance of these Terms Of Use.',
                style: kTitleLarge,
              ),
              15.height,
              Text(
                'These Terms Of Services positioned to offer bespoke services at competitive prices without sacrificing. Lorem ipsum dolor sit amet consectetur adipiscing elit dapibus ornare. Lorem ipsum dolor sit amet consectetur adipiscing elit dapibus ornare',
                style: kBodyMedium.copyWith(color: kTextColorLight),
              ),
              15.height,
              Text(
                'Please read the Of Services positioned to offer bespoke services at competitive prices.',
                style: kBodyMedium.copyWith(color: kTextColorLight),
              ),
              15.height,
              Text(
                'These Terms Of Services positioned to offer bespoke services at competitive prices without sacrificing. Lorem ipsum dolor sit amet consectetur adipiscing elit dapibus ornare. Lorem ipsum dolor sit amet consectetur adipiscing elit dapibus ornareƒ',
                style: kBodyMedium.copyWith(color: kTextColorLight),
              ),
            ],
          ),
        ),
     
      ),
    );
  }
}

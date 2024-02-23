import 'package:flutter/material.dart';
import 'package:gas_cylinder/app/core/config/color.dart';
import 'package:gas_cylinder/app/core/config/style.dart';
import 'package:gas_cylinder/app/core/utils/int_extensions.dart';
import 'package:gas_cylinder/app/widgets/appbar.dart';

import 'package:get/get.dart';

import '../controllers/gas_cylinder_safety_controller.dart';

class GasCylinderSafetyView extends GetView<GasCylinderSafetyController> {
  const GasCylinderSafetyView({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const CustomAppBar(
          title: Text('Gas Cylinder Safety'),
          fgColor: kWhite,
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
          child: Column(
            children: [
              // banner img
              ClipRRect(
                borderRadius: BorderRadius.circular(24),
                child: Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(24)),
                    child: Image.asset(
                        width: double.infinity,
                        fit: BoxFit.fitWidth,
                        'assets/images/gas_cylinder_safety_banner.png')),
              ),
              15.height,
              Text(
                'Applicability & Acceptance of these Terms Of Use.',
                style: kTitleLarge.copyWith(color: kPrimaryColor),
              ),
              12.height,
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
                style: kTitleLarge.copyWith(color: kPrimaryColor),
              ),
              15.height,
              Text(
                'These Terms Of Services positioned to offer bespoke services at competitive prices without sacrificing. Lorem ipsum dolor sit amet consectetur adipiscing elit dapibus ornare. Lorem ipsum dolor sit amet consectetur adipiscing elit dapibus ornare',
                style: kBodyMedium.copyWith(color: kTextColorLight),
              ),
              12.height,
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

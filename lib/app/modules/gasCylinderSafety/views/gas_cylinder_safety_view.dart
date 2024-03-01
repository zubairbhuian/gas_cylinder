import 'package:flutter/material.dart';
import 'package:gas_cylinder/app/core/config/color.dart';
import 'package:gas_cylinder/app/core/config/style.dart';
import 'package:gas_cylinder/app/core/utils/int_extensions.dart';
import 'package:gas_cylinder/app/modules/gasCylinderSafety/widgets/gas_safety_card.dart';
import 'package:gas_cylinder/app/widgets/app_indecator.dart';
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
        body: GetBuilder<GasCylinderSafetyController>(builder: (controller) {
          var data = controller.cylinderSafety;
          if (data.isNotEmpty) {
            return SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
              child: Column(
                children: List.generate(
                    data.length,
                    (index) => GasSafetyCard(
                          title: data[index].title,
                          description: data[index].description,
                          imgURL: data[index].imgURL,
                        )),
              ),
            );
          }
          return const Center(
            child: AppIndecator(),
          );
        }),
      ),
    );
  }
}

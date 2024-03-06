import 'package:flutter/material.dart';
import 'package:gas_cylinder/app/core/config/color.dart';
import 'package:gas_cylinder/app/widgets/app_indecator.dart';
import 'package:gas_cylinder/app/widgets/appbar.dart';
import 'package:get/get.dart';
import '../controllers/terms_andconditions_controller.dart';
import '../widgets/terms_and_conditions_card.dart';

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
        body: GetBuilder<TermsAndconditionsController>(builder: (conreoller) {
          var data = controller.termsAndConditionList;
          if (data.isNotEmpty) {
            return SingleChildScrollView(
            
              padding:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(
                    data.length,
                    (index) => TermsAndconditionsCard(
                        title: data[index].title,
                        description: data[index].description)),
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

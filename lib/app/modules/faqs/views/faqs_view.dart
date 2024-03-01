import 'package:flutter/material.dart';
import 'package:gas_cylinder/app/core/config/color.dart';
import 'package:gas_cylinder/app/widgets/app_indecator.dart';
import 'package:gas_cylinder/app/widgets/appbar.dart';
import 'package:gas_cylinder/app/widgets/custom_expansion_tile.dart';
import 'package:get/get.dart';
import '../controllers/faqs_controller.dart';

class FaqsView extends GetView<FaqsController> {
  const FaqsView({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const CustomAppBar(
          title: Text('FAQs'),
          fgColor: kWhite,
        ),
        body: GetBuilder<FaqsController>(builder: (controller) {
          var data = controller.faqList;
          if (data.isNotEmpty) {
            return SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
              child: Column(
                children: List.generate(data.length, (index) {
                  return  CustomExpansionTile(
                    title: data[index].title,
                    description:data[index].description,
                  );
                }),
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

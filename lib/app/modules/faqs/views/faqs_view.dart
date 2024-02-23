import 'package:flutter/material.dart';
import 'package:gas_cylinder/app/core/config/color.dart';
import 'package:gas_cylinder/app/widgets/appbar.dart';
import 'package:gas_cylinder/app/widgets/custom_expansion_tile.dart';

import 'package:get/get.dart';

import '../controllers/faqs_controller.dart';

class FaqsView extends GetView<FaqsController> {
  const FaqsView({super.key});
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          title: Text('FAQs'),
          fgColor: kWhite,
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
          child: Column(
            children: [
              CustomExpansionTile(
                title: 'What is Sue Tru gas JA?',
                description:
                    'Sue Tru Gas JA is a cooking gas delivery service in Jamaica that brings FESGAS (cooking gas segment of FESCO) cooking gas cylinders right to your doorstep, saving you time and effort.',
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:gas_cylinder/app/core/config/color.dart';
import 'package:gas_cylinder/app/modules/welcome/controllers/welcome_controller.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomAnimatedSmoothIndicator extends StatelessWidget {
  const CustomAnimatedSmoothIndicator({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return GetBuilder<WelcomeController>(
      builder: (controller) {
        return Center(
          child: AnimatedSmoothIndicator(
            activeIndex: controller.pageIndex,
            count: 3,
            effect: CustomizableEffect(
              spacing: 20.0,
              activeDotDecoration: DotDecoration(
                height: 8,
                width: 21,
                borderRadius: BorderRadius.circular(120),
              ),
              dotDecoration:  DotDecoration(
                height: 8,
                width: 8,
                verticalOffset: 0,
                borderRadius: BorderRadius.circular(120),
              ),
              // spacing: 6.0,
              activeColorOverride: (i) => kWhite,
              inActiveColorOverride: (i) => const Color(0xff80B1E3),
            ),
            // effect: ScaleEffect(
            //     dotColor: Color(0xff9FDDD1),
            //     activeDotColor: Color(0xff0EAB8B)),
          ),
        );
      }
    );
  }
}
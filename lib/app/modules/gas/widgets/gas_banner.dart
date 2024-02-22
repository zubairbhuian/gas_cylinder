import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gas_cylinder/app/core/config/color.dart';
import 'package:gas_cylinder/app/core/config/style.dart';
import 'package:gas_cylinder/app/modules/gas/controllers/gas_controller.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class GasBanner extends GetView<GasController> {
  final double height;
  const GasBanner({
    super.key,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: height,
          child: CarouselSlider(
            carouselController: controller.carouselController,
            items: List.generate(
              3,
              // ? main component
              (index) => Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 11),
                decoration: BoxDecoration(
                    color: kInfoColor,
                    gradient: LinearGradient(
                      colors: [
                        kPrimaryColor,
                        kPrimaryColor.withOpacity(.9),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(24)),
                child: Row(
                  children: [
                    //  first
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "50% of the full range of Gas Cylinder",
                            style: kHeadlineMedium.copyWith(color: kWhite),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(
                            height: 18.h,
                          ),
                          Text(
                            "Valid Until January 26",
                            style: kBodyLarge.copyWith(color: kWhite),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                    //last
                    Image.asset(
                      width: 103.w,
                      'assets/icons/entryPoint/demo_banner.png')
                  ],
                ),
              ),
            ),
            options: CarouselOptions(
              height: double.infinity,
              aspectRatio: 16 / 9,
              viewportFraction: 1,
              initialPage: controller.carouselIndex,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 3),
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              autoPlayCurve: Curves.easeInOut,
              enlargeCenterPage: true,
              enlargeFactor: 0.25,
              onPageChanged: (index, carouselPageChangedReason) {
                controller.carouselIndex = index;
                controller.update();
              },
              scrollDirection: Axis.horizontal,
            ),
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        GetBuilder<GasController>(builder: (controller) {
          return Center(
            child: AnimatedSmoothIndicator(
              activeIndex: controller.carouselIndex,
              count: 3,
              effect: CustomizableEffect(
                spacing: 20.0,
                activeDotDecoration: DotDecoration(
                  height: 8,
                  width: 21,
                  borderRadius: BorderRadius.circular(120),
                ),
                dotDecoration: DotDecoration(
                  height: 8,
                  width: 8,
                  verticalOffset: 0,
                  borderRadius: BorderRadius.circular(120),
                ),
                // spacing: 6.0,
                activeColorOverride: (i) => kPrimaryColor,
                inActiveColorOverride: (i) => const Color(0xff80B1E3),
              ),
              // effect: ScaleEffect(
              //     dotColor: Color(0xff9FDDD1),
              //     activeDotColor: Color(0xff0EAB8B)),
            ),
          );
        })
      ],
    );
  }
}

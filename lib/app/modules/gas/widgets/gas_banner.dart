import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gas_cylinder/app/core/config/color.dart';
import 'package:gas_cylinder/app/data/models/banner_model.dart';
import 'package:gas_cylinder/app/modules/gas/controllers/gas_controller.dart';
import 'package:gas_cylinder/app/widgets/network_img.dart';
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
    return GetBuilder<GasController>(builder: (controller) {
      List<BannerModel> data = controller.bannerList;
      return Column(
        children: [
          SizedBox(
            height: height,
            child: CarouselSlider(
              carouselController: controller.carouselController,
              items: List.generate(
                data.length,
                // ? main component
                (index) => ClipRRect(
                  borderRadius: BorderRadius.circular(24),
                  child: Container(
                      decoration: const BoxDecoration(
                          color: kWhite,
                          ),
                      child: NetworkImg(
                        data[index].imgURL,
                        fit: BoxFit.cover,
                                      
                      )),
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
                enlargeFactor: 0.45,
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
                count: data.length,
                effect: CustomizableEffect(
                  spacing: 12.0,
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
    });
  }
}

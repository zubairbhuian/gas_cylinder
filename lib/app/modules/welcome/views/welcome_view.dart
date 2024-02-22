import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gas_cylinder/app/core/config/color.dart';
import 'package:gas_cylinder/app/core/config/style.dart';

import 'package:gas_cylinder/app/modules/welcome/widgets/custom_animated_smooth_indicator.dart';
import 'package:gas_cylinder/app/routes/app_pages.dart';
import 'package:get/get.dart';
import '../controllers/welcome_controller.dart';

class WelcomeView extends GetView<WelcomeController> {
  const WelcomeView({super.key});
  @override
  Widget build(BuildContext context) {
    var data = controller.welcomeDataList;
    // Status Bar Color
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: kWhite,
      statusBarIconBrightness: Brightness.dark,
    ));
    return SafeArea(
      child: Scaffold(
        backgroundColor: kPrimaryColor,
        body: Stack(
          children: [
            CarouselSlider(
              carouselController: controller.carouselController,
              items: List.generate(
                data.length,
                (index) => Column(
                  children: [
                    // card
                    Container(
                      height:500.h,
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      decoration: const BoxDecoration(
                          color: kWhite,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30),
                          )),
                      child: FittedBox(
                        child: Column(
                          children: [
                            SvgPicture.asset('assets/images/auth/logo.svg'),
                            SizedBox(
                              height: 17.h,
                            ),
                            Image.asset(data[index].img)
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 26.h,
                    ),
                    //text Content
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 50.w),
                      child: Column(
                        children: [
                          Text(
                            data[index].title,
                            style: kHeadlineMedium.copyWith(color: kWhite),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: 16.h,
                          ),
                          Text(
                            data[index].subTitle,
                            style: kBodyLarge.copyWith(color: kWhite),
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              options: CarouselOptions(
                height: double.infinity,
                aspectRatio: 16 / 9,
                viewportFraction: 1,
                initialPage: controller.pageIndex,
                // autoPlay: true,
                autoPlayInterval: const Duration(seconds: 3),
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                autoPlayCurve: Curves.easeInOut,
                // enlargeCenterPage: true,
                enlargeFactor: 0.25,
                onPageChanged: (index, carouselPageChangedReason) {
                  controller.pageIndex = index;
                  controller.update();
                },
                scrollDirection: Axis.horizontal,
              ),
            ),
            
            // bottom part
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                width: double.infinity,
                height: 90,
                color: kPrimaryColor,
                child: Column(
                  children: [
                    const CustomAnimatedSmoothIndicator(),
                    SizedBox(
                      height: 16.h,
                    ),
                    GetBuilder<WelcomeController>(builder: (controller) {
                      return ElevatedButton(
                        onPressed: () {
                          if (controller.pageIndex == 2) {
                            Get.offAllNamed(Routes.SIGN_IN);
                          } else {
                            controller.pageIndex = controller.pageIndex + 1;
                            controller.carouselController.nextPage();
                            controller.update();
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: kWhite,
                          foregroundColor: kPrimaryColor,
                        ),
                        child: Center(
                            child: Text(controller.pageIndex == 2
                                ? "Get Started"
                                : "Next")),
                      );
                    }),
                    // GetBuilder<WelcomeController>(builder: (controller) {
                    //   if (controller.pageIndex == 2) {
                    //     return const SizedBox.shrink();
                    //   }
                    //   return TextButton(
                    //     onPressed: () {
                    //       Get.offAllNamed(Routes.SIGN_IN);
                    //     },
                    //     style: TextButton.styleFrom(foregroundColor: kWhite),
                    //     child: const Text('Skip'),
                    //   );
                    // })
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gas_cylinder/app/core/config/color.dart';
import 'package:gas_cylinder/app/core/config/style.dart';
import 'package:gas_cylinder/app/core/utils/int_extensions.dart';
import 'package:gas_cylinder/app/modules/gas/widgets/custom_search_bar.dart';
import 'package:gas_cylinder/app/modules/gas/widgets/gas_banner.dart';
import 'package:gas_cylinder/app/modules/profile/controllers/profile_controller.dart';
import 'package:gas_cylinder/app/widgets/appbar.dart';
import 'package:gas_cylinder/app/widgets/card.dart';
import 'package:gas_cylinder/app/widgets/drawer/custom_drawer.dart';

import 'package:get/get.dart';

import '../controllers/gas_controller.dart';

class GasView extends GetView<GasController> {
  const GasView({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          drawer: const CustomDrawer(),
          appBar: CustomAppBar(
            title: Text(ProfileController.to.user?.name ?? "User name"),
            bgColor: kPrimaryColor,
            fgColor: kWhite,
            isPrimary: true,
            centerTitle: false,
          ),
          body: RefreshIndicator(
            onRefresh: () async {
             controller.getBanner();
            },
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(vertical: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //search
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: CustomSearchBar(
                      controller: controller.searchController,
                      hintText: 'Fuel Gas Location....',
                    ),
                  ),
                  //slyder
                  GasBanner(
                    height: 145.w,
                  ),
                  SizedBox(
                    height: 35.h,
                  ),
                  // main category
                  Container(
                    padding: const EdgeInsets.all(20),
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                        color: kWhite,
                        borderRadius: BorderRadius.circular(24),
                        boxShadow: [kbtnShadow]),
                    child: Row(
                      children: [
                        Expanded(
                          child: AppCard(
                            onTap: () {},
                            color: const Color(0xffE5EFF9),
                            elevation: 0,
                            child: Column(
                              children: [
                                Image.asset(
                                    width: 45.sp,
                                    height: 45.sp,
                                    'assets/icons/entryPoint/new_cylinder.png'),
                                SizedBox(
                                  height: 18.h,
                                ),
                                Text(
                                  "New Cylinder With Gas",
                                  style: kLabelLarge,
                                  textAlign: TextAlign.center,
                                )
                              ],
                            ),
                          ),
                        ),
                        10.width,
                        Expanded(
                          child: AppCard(
                            onTap: () {},
                            color: const Color(0xffFEF2E8),
                            elevation: 0,
                            child: Column(
                              children: [
                                Image.asset(
                                    width: 45.sp,
                                    height: 45.sp,
                                    'assets/icons/entryPoint/just_gas_change.png'),
                                SizedBox(
                                  height: 18.h,
                                ),
                                Text(
                                  "Just Gas Change",
                                  style: kLabelLarge,
                                  textAlign: TextAlign.center,
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  //Special Offer
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      "Special Offer",
                      style: kTitleLarge,
                    ),
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: StaggeredGrid.count(
                        crossAxisCount: 2,
                        mainAxisSpacing: 14,
                        crossAxisSpacing: 14,
                        children: List.generate(4, (index) {
                          return AppCard(
                            onTap: () {},
                            color: const Color(0xffE5EFF9),
                            elevation: 6,
                            child: Column(
                              children: [
                                Image.asset(
                                    width: 153.w,
                                    fit: BoxFit.fill,
                                    'assets/icons/entryPoint/demo_1.png'),
                                SizedBox(
                                  height: 18.h,
                                ),
                                Text(
                                  "Gas Cylinder",
                                  style: kTitleMedium,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                ),
                                6.height,
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: Text(
                                        "11kg | \$35.00",
                                        style: kLabelSmall,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        SvgPicture.asset(
                                            'assets/icons/entryPoint/star.svg'),
                                        4.width,
                                        Text(
                                          "4.9",
                                          style: kLabelSmall.copyWith(
                                              color: kYellow),
                                        ),
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          );
                        })),
                  )
                ],
              ),
            ),
          )),
    );
  }
}

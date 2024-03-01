import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gas_cylinder/app/core/config/color.dart';
import 'package:gas_cylinder/app/core/config/style.dart';
import 'package:gas_cylinder/app/modules/profile/controllers/profile_controller.dart';
import 'package:gas_cylinder/app/widgets/network_img.dart';
import 'package:get/get.dart';

class ProfileBanner extends GetView<ProfileController> {
  const ProfileBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: double.infinity,
      decoration: const BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(24),
            bottomRight: Radius.circular(24),
          )),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            bottom: -70,
            left: 0,
            right: 0,
            child: Container(
              width: 144.sp,
              height: 144.sp,
              decoration: BoxDecoration(
                  color: kDisabledColor,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: kDisabledColor,
                    width: 3,
                  )),

              child: Stack(
                children: [
                  NetworkImg(controller.user?.photoURL??""),
                  Positioned(
                      left: 0,
                      right: -100,
                      bottom: 10,
                      child: Container(
                        width: 44,
                        height: 44,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: kTextColorLight),
                        child: const Icon(
                          Icons.camera_alt,
                          color: kWhite,
                        ),
                      ))
                ],
              ),
            ),
          ),
          Positioned(
              top: 10,
              left: 0,
              right: 0,
              child: Center(
                child: Text(
                  "Profile",
                  style: kTitleLarge.copyWith(color: kWhite),
                ),
              )),
        ],
      ),
    );
  }
}

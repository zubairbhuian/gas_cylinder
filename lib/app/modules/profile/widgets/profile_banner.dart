import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gas_cylinder/app/core/config/color.dart';
import 'package:gas_cylinder/app/core/config/style.dart';
import 'package:gas_cylinder/app/core/utils/logger.dart';
import 'package:gas_cylinder/app/modules/profile/controllers/profile_controller.dart';
import 'package:gas_cylinder/app/widgets/network_img.dart';
import 'package:get/get.dart';

class ProfileBanner extends GetView<ProfileController> {
  const ProfileBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      width: double.infinity,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            height: 120,
            width: double.infinity,
            decoration: const BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(24),
                  bottomRight: Radius.circular(24),
                )),
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
          Positioned(
            bottom: 25,
            left: 0,
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                  color: kDisabledColor,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: kDisabledColor,
                    width: 3,
                  )),
              child: Column(
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(800),
                      child:
                          GetBuilder<ProfileController>(builder: (controller) {
                        var data = controller.profileImgFile;
                        if (data == null) {
                          return NetworkImg(
                              width: 144.sp,
                              height: 144.sp,
                              controller.user?.photoURL ?? "");
                        }
                        return Image(
                            width: 144.sp,
                            height: 144.sp,
                            fit: BoxFit.cover,
                            image: FileImage(data));
                      })),
                  // Container(
                  //   width: 44,
                  //   height: 44,
                  //   decoration: const BoxDecoration(
                  //       shape: BoxShape.circle, color: kTextColorLight),
                  //   child: const Icon(
                  //     Icons.camera_alt,
                  //     color: kWhite,
                  //   ),
                  // )
                ],
              ),
            ),
          ),
          Positioned(
              left: 0,
              right: -120,
              bottom: 45,
              child: Container(
                width: 42,
                height: 42,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: kTextColorLight.withOpacity(.3)),
                child: GestureDetector(
                  onTap: () {
                    controller.onPickProfileImage();
                  },
                  child: const Icon(
                    Icons.camera_alt,
                    color: kWhite,
                  ),
                ),
              )),
        ],
      ),
    );
  }
}

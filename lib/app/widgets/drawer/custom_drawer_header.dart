import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gas_cylinder/app/core/config/color.dart';
import 'package:gas_cylinder/app/modules/profile/controllers/profile_controller.dart';
import 'package:gas_cylinder/app/widgets/network_img.dart';
import 'package:get/get.dart';

class CustomDrawerHeader extends StatelessWidget {
  const CustomDrawerHeader({super.key});

  @override
  Widget build(BuildContext context) {
    var user = ProfileController.to.user;
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(left: 30, top: 30, bottom: 20),
      color: kPrimaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  padding: const EdgeInsets.all(2),
                  decoration: const BoxDecoration(
                    color: kWhite,
                    shape: BoxShape.circle
                  ),

                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(800),
                    child: NetworkImg(
                      fit: BoxFit.cover,
                      user?.photoURL??''),
                  ),
                ),
              ),
              IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: const Icon(
                    Icons.close,
                    color: kWhite,
                  ))
            ],
          ),
          SizedBox(
            height: 30.h,
          ),
          Text(
            user?.name ?? "User Name",
            style: TextStyle(
                color: kWhite, fontSize: 24.sp, fontWeight: FontWeight.w700),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            user?.email ?? "User Email",
            style: const TextStyle(
              color: kWhite,
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}

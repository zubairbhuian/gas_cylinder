import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gas_cylinder/app/core/config/color.dart';
import 'package:gas_cylinder/app/core/utils/int_extensions.dart';
import 'package:get/get.dart';

class CustomDrawerItem extends StatelessWidget {
  final String title;
  final String icon;
  final String route;

  const CustomDrawerItem({required this.icon, required this.title, super.key, required this.route});

  @override
  Widget build(BuildContext context) => GestureDetector(
    onTap: () {
          // Get.back();
          Get.toNamed(route);
        }, 
    child: Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        children: [
          Container(
            width: 48.sp,
            height: 48.sp,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [kCardShadow]
            ),
            child: SvgPicture.asset(icon)),
          10.width,
          Expanded(child: Text(title))
          ],
      ),
    ),
  );
}

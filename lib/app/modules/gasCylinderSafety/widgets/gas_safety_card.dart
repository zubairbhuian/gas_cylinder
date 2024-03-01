import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gas_cylinder/app/core/config/color.dart';
import 'package:gas_cylinder/app/core/config/style.dart';
import 'package:gas_cylinder/app/core/utils/int_extensions.dart';
import 'package:gas_cylinder/app/widgets/network_img.dart';

class GasSafetyCard extends StatelessWidget {
  final String title;
  final String description;
  final String imgURL;
  const GasSafetyCard({super.key, required this.title, required this.description, required this.imgURL});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(24),
            child: Container(
              
                decoration:
                    BoxDecoration(
                      color: kDisabledColor.withOpacity(.3),
                      borderRadius: BorderRadius.circular(24)),
                    constraints:BoxConstraints(minHeight: 213.h),
                child:NetworkImg(imgURL)),
          ),
          15.height,
          Text(
            title,
            style: kTitleLarge.copyWith(color: kPrimaryColor),
          ),
          12.height,
          Text(
            description,
            style: kBodyMedium.copyWith(color: kTextColorLight),
          ),
          15.height,
        ],
      ),
    );
  }
}

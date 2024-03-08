import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gas_cylinder/app/core/config/color.dart';
import 'package:gas_cylinder/app/core/config/style.dart';
import 'package:gas_cylinder/app/core/utils/int_extensions.dart';
import 'package:gas_cylinder/app/widgets/card.dart';
import 'package:gas_cylinder/app/widgets/network_img.dart';

class ProductCard extends StatelessWidget {
  final String name;
  final String weight;
  final Color color;
  final String price;
  final String rating;
  final String img;
  final void Function()? onTap;
  const ProductCard(
      {super.key,
      required this.name,
      required this.weight,
      required this.color,
      required this.price,
      required this.rating,
      required this.img, this.onTap});

  @override
  Widget build(BuildContext context) {
    return AppCard(
      onTap: onTap,
      color: color,
      elevation: 6,
      child: Column(
        children: [
          NetworkImg(img),
          SizedBox(
            height: 18.h,
          ),
          Text(
            name,
            style: kTitleMedium,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
          ),
          6.height,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: Text(
                  "$weight| \$$price",
                  style: kLabelSmall,
                ),
              ),
              10.width,
              Row(
                children: [
                  SvgPicture.asset('assets/icons/entryPoint/star.svg'),
                  4.width,
                  Text(
                    rating,
                    style: kLabelSmall.copyWith(color: kYellow),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

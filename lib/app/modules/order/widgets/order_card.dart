import 'package:flutter/material.dart';
import 'package:gas_cylinder/app/core/config/color.dart';
import 'package:gas_cylinder/app/core/config/style.dart';
import 'package:gas_cylinder/app/core/utils/int_extensions.dart';
import 'package:gas_cylinder/app/widgets/custom_btn.dart';
import 'package:get/get.dart';

class OrderCard extends StatelessWidget {
  final String img;
  const OrderCard({super.key, required this.img});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
        color: kWhite,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [kCardShadow]
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          200.height,
          // img
          Container(
            padding: const EdgeInsets.only(
                left: 25, right: 25, top: 17, bottom: 10),
            decoration: BoxDecoration(
                color: kWhite,
                boxShadow: [kCardShadow],
                borderRadius: BorderRadius.circular(24)),
            child: Image.asset(img),
          ),
          15.width,
          // info
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Gas Refill",
                  style: kTitleMedium,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Row(
                  children: [
                    Text(
                      " \$55",
                      style: kTitleMedium,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: CircleAvatar(
                        radius: 2,
                      ),
                    ),
                    Expanded(
                        child: Text(
                      "Gas Cylinder",
                      style: kBodyMedium.copyWith(color: kTextColorLight),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    )),
                  ],
                ),
                12.height,
                Text(
                  "Additional Service",
                  style: kTitleMedium,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                8.height,
                // ? service list
                Text('Installation & cleaning service',
                    style: kBodyMedium.copyWith(color: kTextColorLight)),
                Text(
                  'Extra hose per meter',
                  style: kBodyMedium.copyWith(color: kTextColorLight),
                ),
                Text('Extra hose per meter  ',
                    style: kBodyMedium.copyWith(color: kTextColorLight)),
                12.height,
                Row(
                  children: [
                    ThineBtn('Active Order', onPressed: () {}),
                    8.width,
                    ThineBtn(
                      'Cancel',
                      onPressed: () {},
                      backgroundColor: kDisabledColor,
                      foregroundColor: kTextColor,
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ).marginOnly(bottom: 6),
    );
  }
}

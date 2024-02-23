// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gas_cylinder/app/core/config/color.dart';
import 'package:gas_cylinder/app/core/config/style.dart';
import 'package:gas_cylinder/app/core/utils/int_extensions.dart';
import 'package:gas_cylinder/app/widgets/custom_btn.dart';

class OrdersHistoryCard extends StatelessWidget {
  const OrdersHistoryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.all(15),
      width: double.infinity,
      decoration: BoxDecoration(
          color: kWhite,
          boxShadow: [kCardShadow],
          borderRadius: BorderRadius.circular(24)),
      child: Column(
        children: [
          //header
          Row(
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: SvgPicture.asset(
                      'assets/icons/orders_history_cylinder.svg')),
              10.width,
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Fesco Gas',
                    style: kLabelLarge,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    'Deliver Date: 12.05.2023',
                    style: kBodyMedium.copyWith(color: kTextColorLight),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  )
                ],
              )),
              ThineBtn(
                  foregroundColor: kSuccessColor,
                  backgroundColor: kSuccessColor.withOpacity(.1),
                  'Complete',
                  onPressed: () {})
            ],
          ),
          SizedBox(
            height: 15.h,
          ),
          const Divider(
            height: 1,
            color: kDisabledColor,
            thickness: .5,
          ),
          SizedBox(
            height: 15.h,
          ),

          // info

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Order ',
                        style: kLabelLarge,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      8.height,
                      Text(
                        'Cylinder Gas',
                        style: kBodyMedium.copyWith(color: kTextColorLight),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                       20.height,
                      //  ? Gas size
                      Text(
                        'Cylinder Size',
                        style: kLabelLarge,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                       8.height,
                      Text(
                        '15kg',
                        style: kBodyMedium.copyWith(color: kTextColorLight),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //  ? Gas size
                    Text(
                      'Cylinder Type',
                      style: kLabelLarge,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                     8.height,
                    Text(
                      'New',
                      style: kBodyMedium.copyWith(color: kTextColorLight),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    20.height,
                    OutLineBtn(
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            'assets/icons/entryPoint/star.svg',
                            color: const Color(0xffFF5C5F),
                          ),
                          const Text(' Rate us')
                        ],
                      ),
                      onPressed: () {},
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

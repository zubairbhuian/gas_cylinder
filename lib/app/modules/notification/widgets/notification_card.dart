import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gas_cylinder/app/core/config/style.dart';
import 'package:gas_cylinder/app/core/utils/int_extensions.dart';
import 'package:gas_cylinder/app/widgets/card.dart';
import 'package:get/get.dart';

class NotificationCard extends StatelessWidget {
  final String img;
  final String title;
  final String time;
  const NotificationCard(
      {super.key, required this.img, required this.title, required this.time});

  @override
  Widget build(BuildContext context) {
    return AppCard(
      elevation: 5,
        onTap: () {},
        child: Row(
          children: [
            // img
            Image.asset(width: 41, height: 41, img),
            10.width,
            // info
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: kLabelLarge,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  5.height,
                  Text(
                    time,
                    style: kBodySmall,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            )
          ],
        )).marginOnly(bottom: 7);
  }
}

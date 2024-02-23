import 'package:flutter/material.dart';
import 'package:gas_cylinder/app/core/config/color.dart';
import 'package:gas_cylinder/app/core/config/style.dart';
import 'package:gas_cylinder/app/core/utils/int_extensions.dart';
import 'package:gas_cylinder/app/modules/notification/widgets/notification_card.dart';
import 'package:gas_cylinder/app/widgets/appbar.dart';
import 'package:gas_cylinder/app/widgets/drawer/custom_drawer.dart';

import 'package:get/get.dart';

import '../controllers/notification_controller.dart';

class NotificationView extends GetView<NotificationController> {
  const NotificationView({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: const CustomDrawer(),
        appBar: const CustomAppBar(
          title: Text('NotificationView'),
          isPrimary: true,
          fgColor: kWhite,
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Today",
                style: kTitleLarge,
              ),
              15.height,
              const NotificationCard(
                  img: 'assets/images/demo_noti_1.png',
                  title: 'Discount Voucher!',
                  time: '23m Ago'),
              const NotificationCard(
                  img: 'assets/images/demo_noti_2.png',
                  title: 'Discount Voucher!',
                  time: '23m Ago'),
              const NotificationCard(
                  img: 'assets/images/demo_noti_1.png',
                  title: 'Discount Voucher!',
                  time: '23m Ago'),
              Text(
                "Yesterday",
                style: kTitleLarge,
              ),
              15.height,
              const NotificationCard(
                  img: 'assets/images/demo_noti_1.png',
                  title: 'Discount Voucher!',
                  time: '1 day ago'),
              const NotificationCard(
                  img: 'assets/images/demo_noti_2.png',
                  title: 'Discount Voucher!',
                  time: '1 day ago'),
              const NotificationCard(
                  img: 'assets/images/demo_noti_1.png',
                  title: 'Discount Voucher!',
                  time: '1 day ago'),
            ],
          ),
        ),
      ),
    );
  }
}

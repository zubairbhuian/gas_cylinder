import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gas_cylinder/app/core/config/color.dart';
import 'package:gas_cylinder/app/core/config/style.dart';
import 'package:gas_cylinder/app/core/utils/int_extensions.dart';
import 'package:gas_cylinder/app/modules/notification/widgets/notification_card.dart';
import 'package:gas_cylinder/app/widgets/app_indecator.dart';
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
        body: GetBuilder<NotificationController>(builder: (controller) {
          var data = controller.notificationList;
          if (data.isNotEmpty) {
            return RefreshIndicator(
              onRefresh: () async {
                controller.getNotification();
              },
              child: SingleChildScrollView(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                      minHeight: MediaQuery.of(context).size.height),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Today",
                        style: kTitleLarge,
                      ),
                      15.height,
                      ...List.generate(
                          data.length,
                          (index) => NotificationCard(
                              img: 'assets/images/demo_noti_1.png',
                              title: data[index].title,
                              time: '23m Ago')),
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
          return const Center(
            child: AppIndecator(),
          );
        }),
      ),
    );
  }
}

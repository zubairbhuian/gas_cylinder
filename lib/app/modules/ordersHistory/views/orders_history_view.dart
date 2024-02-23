import 'package:flutter/material.dart';
import 'package:gas_cylinder/app/core/config/color.dart';
import 'package:gas_cylinder/app/modules/ordersHistory/widgets/orders_history_card.dart';
import 'package:gas_cylinder/app/widgets/appbar.dart';

import 'package:get/get.dart';

import '../controllers/orders_history_controller.dart';

class OrdersHistoryView extends GetView<OrdersHistoryController> {
  const OrdersHistoryView({super.key});
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          title: Text('OrdersHistoryView'),
          isPrimary: true,
          fgColor: kWhite,
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 25),
          child: Column(
            children: [
              OrdersHistoryCard(),
              OrdersHistoryCard(),

            ],
          ),
        ),
      ),
    );
  }
}

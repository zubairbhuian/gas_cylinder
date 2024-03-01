import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gas_cylinder/app/core/config/color.dart';
import 'package:gas_cylinder/app/modules/ordersHistory/widgets/orders_history_card.dart';
import 'package:gas_cylinder/app/widgets/appbar.dart';

import 'package:get/get.dart';

import '../controllers/orders_history_controller.dart';

class OrdersHistoryView extends GetView<OrdersHistoryController> {
  const OrdersHistoryView({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const CustomAppBar(
          title: Text('OrdersHistoryView'),
          isPrimary: false,
          fgColor: kWhite,
        ),
        body: RefreshIndicator(
          onRefresh: () async {},
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
            child: ConstrainedBox(
              constraints:
                  BoxConstraints(minHeight: MediaQuery.of(context).size.height),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  OrdersHistoryCard(),
                  // OrdersHistoryCard(),
                  // OrdersHistoryCard(),
                  // OrdersHistoryCard(),
                  // OrdersHistoryCard(),
                  // OrdersHistoryCard(),
                  // OrdersHistoryCard(),
                  // OrdersHistoryCard(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

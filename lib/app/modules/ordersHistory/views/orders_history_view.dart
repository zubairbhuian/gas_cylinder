import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/orders_history_controller.dart';

class OrdersHistoryView extends GetView<OrdersHistoryController> {
  const OrdersHistoryView({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('OrdersHistoryView'),
          centerTitle: true,
        ),
        body: const Center(
          child: Text(
            'OrdersHistoryView is working',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}

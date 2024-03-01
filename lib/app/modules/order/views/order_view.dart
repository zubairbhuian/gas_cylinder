import 'package:flutter/material.dart';
import 'package:gas_cylinder/app/core/config/color.dart';
import 'package:gas_cylinder/app/modules/order/widgets/order_card.dart';
import 'package:gas_cylinder/app/widgets/appbar.dart';
import 'package:gas_cylinder/app/widgets/drawer/custom_drawer.dart';

import 'package:get/get.dart';

import '../controllers/order_controller.dart';

class OrderView extends GetView<OrderController> {
  const OrderView({super.key});
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        drawer: const CustomDrawer(),
        appBar: const CustomAppBar(
          title: Text('Active Order'),
          fgColor: kWhite,
          isPrimary: true,
          ),
        body: RefreshIndicator(
          onRefresh: () async{

            
          },
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 25),
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: MediaQuery.of(context).size.height
              ),
              // height: MediaQuery.of(context).size.height,
              child: const Column(
              children: [
                OrderCard(img: 'assets/images/cylinder_1.png'),
                OrderCard(img: 'assets/images/cylinder_1.png',),
                OrderCard(img: 'assets/images/cylinder_1.png',),
                OrderCard(img: 'assets/images/cylinder_1.png',),
                OrderCard(img: 'assets/images/cylinder_1.png',),
                OrderCard(img: 'assets/images/cylinder_1.png',),
                OrderCard(img: 'assets/images/cylinder_1.png',),
                OrderCard(img: 'assets/images/cylinder_1.png',),
                OrderCard(img: 'assets/images/cylinder_1.png',),
                OrderCard(img: 'assets/images/cylinder_1.png',),
                        
              ],
                        ),
            ),),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:gas_cylinder/app/core/config/color.dart';
import 'package:gas_cylinder/app/core/config/style.dart';
import 'package:gas_cylinder/app/core/utils/int_extensions.dart';
import 'package:gas_cylinder/app/widgets/appbar.dart';
import 'package:gas_cylinder/app/widgets/list_text.dart';

import 'package:get/get.dart';

import '../controllers/privacy_policy_controller.dart';

class PrivacyPolicyView extends GetView<PrivacyPolicyController> {
  const PrivacyPolicyView({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: const CustomAppBar(
            title: Text('Privacy Policy'),
            fgColor: kWhite,
          ),
          body: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
            child: Column(
              children: [
                //tile
                Text(
                  'Privacy Policy Acceptance of these Terms Of Use.',
                  style: kTitleLarge,
                ),
                15.height,
                const ListText(
                    count: '1. ',
                    text:
                        'Lorem ipsum dolor sit amet consectetur adipiscing elit, volutpat rutrum at pellentesque cras aptent id natoque, litora nisi enim curae dui massa. Malesuada cum odio sem netus ultricies tellus nec sapien ultrices, eu feugiat habitant mi semper hendrerit donec dictumst, parturient vestibulum proin lobortis eros vitae nulla sociosqu. Donec cursus habitant netus duis varius porttitor fusce, gravida dapibus suspendisse vel pretium aptent purus, nascetur hendrerit litora egestas velit augue.'),
                15.height,
                const ListText(
                    count: '2. ',
                    text:
                        'Lorem ipsum dolor sit amet consectetur adipiscing elit, volutpat rutrum at pellentesque cras aptent id natoque, litora nisi enim curae dui massa. Malesuada cum odio sem netus ultricies tellus nec sapien ultrices, eu feugiat habitant mi semper hendrerit donec dictumst, parturient vestibulum proin lobortis eros vitae nulla sociosqu. Donec cursus habitant netus duis varius porttitor fusce, gravida dapibus suspendisse vel pretium aptent purus, nascetur hendrerit litora egestas velit augue.'),
                15.height,
                const ListText(
                    count: '3. ',
                    text:
                        'Please read the Of Services positioned to offer bespoke services at competitive prices.'),
                15.height,
                const ListText(
                    count: '4. ',
                    text:
                        'These Terms Of Services positioned to offer bespoke services at competitive prices without sacrificing. Lorem ipsum dolor sit amet consectetur adipiscing elit dapibus ornare. Lorem ipsum dolor sit amet consectetur adipiscing elit dapibus ornare'),
                15.height,
                const ListText(
                    count: '5. ',
                    text:
                        'These Terms Of Services positioned to offer bespoke services at competitive prices without sacrificing. Lorem ipsum dolor sit amet consectetur adipiscing elit dapibus ornare. Lorem ipsum dolor sit amet consectetur adipiscing elit dapibus ornare'),
              ],
            ),
          )),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gas_cylinder/app/core/config/style.dart';
import 'package:gas_cylinder/app/modules/profile/widgets/profile_banner.dart';
import 'package:gas_cylinder/app/widgets/custom_textfield.dart';

import 'package:get/get.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:
          Scaffold(body: GetBuilder<ProfileController>(builder: (controller) {
        return SingleChildScrollView(
          child: Column(
            children: [
              // appbar
              const ProfileBanner(),
              // user info
              Text(
                "Change Profile Picture",
                style: kLabelLarge,
              ),
              SizedBox(
                height: 30.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Form(
                    key: controller.formKey,
                    child: Column(
                      children: [
                        CustomTextField2(
                          controller: controller.fullNameController,
                          label: const Text('Full Name'),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your full name';
                            }
                            return null;
                          },
                        ),
                        CustomTextField2(
                          controller: controller.emailController,
                          readOnly: true,
                          label: const Text('Your Email'),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your email';
                            }
                            return null;
                          },
                        ),
                        CustomTextField2(
                          controller: controller.phoneController,
                          label: const Text('Phone Number'),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your phone number';
                            }
                            return null;
                          },
                        ),
                        CustomTextField2(
                          controller: controller.addresasController,
                          label: const Text('Address'),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your address';
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                          height: 60.h,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            if (controller.formKey.currentState!.validate()) {
                              controller.updateUser();
                            }
                          },
                          style: ElevatedButton.styleFrom(
                              minimumSize: const Size(double.infinity, 50)),
                          child: const Text('Update'),
                        ),
                        SizedBox(
                          height: 60.h,
                        ),
                      ],
                    )),
              )
            ],
          ),
        );
      })),
    );
  }
}

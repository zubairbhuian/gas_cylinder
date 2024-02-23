import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gas_cylinder/app/core/config/color.dart';
import 'package:gas_cylinder/app/widgets/appbar.dart';
import 'package:gas_cylinder/app/widgets/custom_textfield.dart';
import 'package:get/get.dart';
import '../controllers/settings_controller.dart';

class ChangePasswordView extends GetView<SettingsController> {
  const ChangePasswordView({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const CustomAppBar(
          title: Text('Change Password'),
          fgColor: kWhite,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
          child: Form(
            key: controller.formKey,
            child: Column(
              children: [
                CustomTextField2(
                  controller: controller.oldPassController,
                  label: const Text('Old Password'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your old password';
                    }
                    return null;
                  },
                ),
                CustomTextField2(
                  controller: controller.newPassController,
                  label: const Text('New Password'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your new password';
                    }
                    return null;
                  },
                ),
                CustomTextField2(
                  controller: controller.newConPassController,
                  label: const Text('Repeat New Password'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your repeat new password';
                    }
                    return null;
                  },
                ),
               const Spacer(),
                ElevatedButton(
                  onPressed: () {
                    if (controller.formKey.currentState!.validate()) {}
                  },
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(double.infinity, 50)),
                  child: const Text('Update'),
                ),
                SizedBox(
                  height: 60.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

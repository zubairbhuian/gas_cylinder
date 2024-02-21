import 'package:flutter/material.dart';
import 'package:gas_cylinder/app/core/utils/logger.dart';
import 'package:gas_cylinder/app/widgets/popup_dialogs.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  final formKey = GlobalKey<FormState>();
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  onsignUp() {
    try {
      // PopupDialog.showErrorMessage("sdfs");
      PopupDialog.showLoadingDialog();
      Future.delayed(const Duration(seconds: 3), () {
        PopupDialog.closeLoadingDialog();
      });
    } catch (e) {
      kLogger.e('Error from %%%% SIGNUP %%%% => $e');
    }
  }
}

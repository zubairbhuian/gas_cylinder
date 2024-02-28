import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:gas_cylinder/app/core/services/base/preferences.dart';
import 'package:gas_cylinder/app/core/services/controller/base_controller.dart';
import 'package:gas_cylinder/app/core/utils/logger.dart';
import 'package:gas_cylinder/app/core/utils/urls.dart';
import 'package:gas_cylinder/app/data/models/base/base_model.dart';
import 'package:gas_cylinder/app/modules/verifyEmail/views/verify_success_view.dart';
import 'package:gas_cylinder/app/widgets/popup_dialogs.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  final formKey = GlobalKey<FormState>();
  final TextEditingController nameController =
      TextEditingController(text: 'admin');
  final TextEditingController emailController =
      TextEditingController(text: 'admin@gmail.com');
  final TextEditingController phoneController =
      TextEditingController(text: '11111111111');
  final TextEditingController passwordController =
      TextEditingController(text: '12345678');

  onsignUp() async {
    Map<String, dynamic> data = {
      "name": nameController.text,
      "email": emailController.text,
      "password": passwordController.text,
      "phone": phoneController.text
    };
    try {
      // PopupDialog.showErrorMessage("sdfs");
      PopupDialog.showLoadingDialog();
      BaseModel res =
          await BaseController.to.apiService.makePostRequest(Urls.signUp, data);
      PopupDialog.closeLoadingDialog();
      if (res.statusCode == 201) {
        Preferences.userId = jsonEncode(res.data["data"]["_id"]);
        kLogger.i("user id:${Preferences.userId}");
        Get.to(() => const VerifySuccessView());
      }
    } catch (e) {
      PopupDialog.closeLoadingDialog();
      kLogger.e('Error from %%%% SIGNUP %%%% => $e');
    }
  }
}

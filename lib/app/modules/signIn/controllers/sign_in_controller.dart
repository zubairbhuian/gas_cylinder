import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:gas_cylinder/app/core/services/base/preferences.dart';
import 'package:gas_cylinder/app/core/services/controller/base_controller.dart';
import 'package:gas_cylinder/app/core/utils/logger.dart';
import 'package:gas_cylinder/app/core/utils/urls.dart';
import 'package:gas_cylinder/app/data/models/base/base_model.dart';
import 'package:gas_cylinder/app/routes/app_pages.dart';
import 'package:gas_cylinder/app/widgets/popup_dialogs.dart';
import 'package:get/get.dart';

class SignInController extends GetxController {
  final formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController(text: "admin@gmail.com");
  final TextEditingController passwordController = TextEditingController(text: "12345678");

  onsignIn() async {
    Map<String, dynamic> data = {
      "email": emailController.text,
      "password": passwordController.text,
    };
    try {
      // PopupDialog.showErrorMessage("sdfs");
      PopupDialog.showLoadingDialog();
      BaseModel res =
          await BaseController.to.apiService.makePostRequest(Urls.login, data);
      PopupDialog.closeLoadingDialog();
      if (res.statusCode == 200) {
        Preferences.userId = jsonEncode(res.data["data"]["_id"]);
        kLogger.i("user id:${Preferences.userId}");
        Get.offAllNamed(Routes.ENTRY_POINT);
      }
    } catch (e) {
      kLogger.e('Error from %%%% SIGNIN %%%% => $e');
    }
  }
}

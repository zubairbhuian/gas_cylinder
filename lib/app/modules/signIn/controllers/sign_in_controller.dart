import 'package:flutter/widgets.dart';
import 'package:gas_cylinder/app/core/utils/logger.dart';
import 'package:gas_cylinder/app/widgets/popup_dialogs.dart';
import 'package:get/get.dart';

class SignInController extends GetxController {
  final formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

    onsignIn() {
    try {
      // PopupDialog.showErrorMessage("sdfs");
      PopupDialog.showLoadingDialog();
      Future.delayed(const Duration(seconds: 3), () {
        PopupDialog.closeLoadingDialog();
      });
    } catch (e) {
      kLogger.e('Error from %%%% SIGNIN %%%% => $e');
    }
  }
}

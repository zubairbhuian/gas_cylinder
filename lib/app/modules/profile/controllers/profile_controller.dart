import 'package:flutter/material.dart';
import 'package:gas_cylinder/app/core/services/controller/base_controller.dart';
import 'package:gas_cylinder/app/core/utils/logger.dart';
import 'package:gas_cylinder/app/core/utils/urls.dart';
import 'package:gas_cylinder/app/data/models/base/base_model.dart';
import 'package:gas_cylinder/app/data/models/user_model.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  static ProfileController get to => Get.find();
  final formKey = GlobalKey<FormState>();
  TextEditingController fullNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController addresasController = TextEditingController();
  UserModel? user;

  getUser() async {
    BaseModel res =
        await BaseController.to.apiService.makeGetRequest(Urls.getUser);
    if (res.statusCode == 200) {
      user = UserModel.fromJson(res.data['data']);
      //
      fullNameController = TextEditingController(text: user?.name);
      emailController = TextEditingController(text: user?.email);
      phoneController = TextEditingController(text: user?.phone);
      phoneController = TextEditingController(text: user?.phone);
      addresasController = TextEditingController(text: user?.addreass);
      update();
      // kLogger.e(user?.id);
    }
  }

  @override
  void onInit() {
    getUser();
    super.onInit();
  }
}

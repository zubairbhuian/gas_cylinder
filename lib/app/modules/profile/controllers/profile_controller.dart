import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:gas_cylinder/app/core/services/controller/base_controller.dart';
import 'package:gas_cylinder/app/core/utils/my_image_picker.dart';
import 'package:gas_cylinder/app/core/utils/urls.dart';
import 'package:gas_cylinder/app/data/models/base/base_model.dart';
import 'package:gas_cylinder/app/data/models/user_model.dart';
import 'package:gas_cylinder/app/widgets/popup_dialogs.dart';
import 'package:get/get.dart' hide FormData, MultipartFile;

import '../../../core/utils/logger.dart';

class ProfileController extends GetxController {
  static ProfileController get to => Get.find();
  final formKey = GlobalKey<FormState>();
  TextEditingController fullNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController addresasController = TextEditingController();
  UserModel? user;
  File? profileImgFile;

  getUser() async {
    BaseModel res =
        await BaseController.to.apiService.makeGetRequest(Urls.getUser);
    if (res.statusCode == 200) {
      user = UserModel.fromJson(res.data['data']);
      fullNameController = TextEditingController(text: user?.name);
      emailController = TextEditingController(text: user?.email);
      phoneController = TextEditingController(text: user?.phone);
      phoneController = TextEditingController(text: user?.phone);
      addresasController = TextEditingController(text: user?.addreass);
      update();
      // kLogger.e(user?.id);
    }
  }

  updateUser() async {
    try {
      Map<String, dynamic> data = {
        'name': fullNameController.text,
        'phone': phoneController.text,
        'addreass': addresasController.text,
      };
      PopupDialog.showLoadingDialog();
      BaseModel res = await BaseController.to.apiService
          .makePutRequest(Urls.updateUser, data);
      PopupDialog.closeLoadingDialog();
      if (res.statusCode == 200) {
        PopupDialog.showSuccessDialog('Profile change succeeded');
        getUser();
        update();
        // kLogger.e(user?.id);
      } else {
        PopupDialog.showErrorMessage("There was something wrong");
      }
    } catch (e) {
      PopupDialog.closeLoadingDialog();

      kLogger.e('Error from %%%% update user %%%% => $e');
    }
  }

  // ******* pick and crop img
  onPickProfileImage() async {
    profileImgFile = await MyImagePicker.pickImageAndCrop();
    if (profileImgFile != null) {
      FormData data = FormData.fromMap({
        'image': await MultipartFile.fromFile(
          profileImgFile!.path,
          // filename: 'upload.jpg', // Specify the filename to be sent
        ),
      });
      BaseModel res = await BaseController.to.apiService
          .makePostRequestWithFormData(Urls.changeProfilePicture, data);
      kLogger.e(res.data);
      if (res.statusCode == 200) {
        getUser();
        PopupDialog.showSuccessDialog("Profile change succeeded");
      } else {
        PopupDialog.showErrorMessage("There was something wrong");
      }
    }
    update();
  }

  // change profile picture
  onChangeProfilePicture() {
    try {} catch (e) {
      kLogger.e('Error from %%%% Change Profile Picture %%%% => $e');
    }
  }

  // change profile
  onChangeProfile() {}

  @override
  void onInit() {
    getUser();
    super.onInit();
  }
}

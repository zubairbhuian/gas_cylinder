import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingsController extends GetxController {
  final formKey = GlobalKey<FormState>();
  final oldPassController = TextEditingController();
  final newPassController = TextEditingController();
  final newConPassController = TextEditingController();
}

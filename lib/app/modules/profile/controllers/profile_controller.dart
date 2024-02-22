import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  final formKey = GlobalKey<FormState>();
  final  firstNameController = TextEditingController(text: 'Zubair');
  final  lastNameController = TextEditingController(text: 'Bhuian');
  final  emailController = TextEditingController(text: 'demo@gamil.com');
  final  phoneController = TextEditingController(text: '017');
  final  passwordController = TextEditingController(text: '1232');
  final  addresasController = TextEditingController(text: 'Nikla,Bhuapur');
}

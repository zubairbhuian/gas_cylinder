import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gas_cylinder/app/core/config/color.dart';
import 'package:gas_cylinder/app/core/config/style.dart';
import 'package:gas_cylinder/app/core/utils/int_extensions.dart';
import 'package:gas_cylinder/app/routes/app_pages.dart';
import 'package:gas_cylinder/app/widgets/custom_textfield.dart';

import 'package:get/get.dart';

import '../controllers/sign_up_controller.dart';

class SignUpView extends GetView<SignUpController> {
  const SignUpView({super.key});
  @override
  Widget build(BuildContext context) {
    // Status Bar Color
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: kWhite,
      statusBarIconBrightness: Brightness.dark,
    ));
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
            padding: const EdgeInsetsDirectional.symmetric(
                horizontal: 20, vertical: 30),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset('assets/images/auth/logo.svg'),
                27.height,
                // head line
                Text(
                  'Welcome back!',
                  style:
                      TextStyle(fontSize: 28.sp, fontWeight: FontWeight.w600),
                ),
                12.height,
                // text
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 27),
                  child: Text(
                    'Enter your email address for sign in.Enjoy your Cooking Gas order',
                    style: kBodyLarge.copyWith(color: kTextColorLight),
                    textAlign: TextAlign.center,
                  ),
                ),
                33.height,
                // ? form
                Form(
                    key: controller.formKey,
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: kWhite,
                          boxShadow: [kCardShadow]),
                      child: Column(
                        children: [
                          CustomTextField(
                            controller: controller.nameController,
                            keyboardType: TextInputType.name,
                            extraLabel: 'Full name',
                            hintText: 'Enter full name',
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter last name';
                              }
                              return null;
                            },
                          ),
                          CustomTextField(
                            controller: controller.emailController,
                            keyboardType: TextInputType.emailAddress,
                            extraLabel: 'Email',
                            hintText: 'Email',
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your email';
                              }
                              return null;
                            },
                          ),
                          CustomTextField(
                            controller: controller.phoneController,
                            keyboardType: TextInputType.phone,
                            extraLabel: 'Phone number',
                            hintText: 'Enter phone number',
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your phone number';
                              } else if (value.length < 11 ||
                                  value.length > 11) {
                                return 'number should be 11 digit';
                              }
                              return null;
                            },
                          ),
                          CustomTextField(
                            controller: controller.passwordController,
                            keyboardType: TextInputType.visiblePassword,
                            extraLabel: 'Password',
                            hintText: 'Password',
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your password';
                              }
                              return null;
                            },
                          ),
                          15.height,
                          RichText(
                              text: TextSpan(
                                  style: kBodyLarge.copyWith(
                                      color: kTextColorLight),
                                  children: [
                                const TextSpan(
                                    text: 'By registering you agree to the '),
                                TextSpan(
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {},
                                    text: 'Terms of Use ',
                                    style: const TextStyle(
                                        color: kInfoColor,
                                        fontWeight: FontWeight.w500)),
                                const TextSpan(text: 'and '),
                                TextSpan(
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {},
                                    text: 'Privacy Policy ',
                                    style: const TextStyle(
                                        color: kInfoColor,
                                        fontWeight: FontWeight.w500)),
                              ])),
                          30.height,
                          // ? Action BTN
                          ElevatedButton(
                            onPressed: () {
                              if (controller.formKey.currentState!.validate()) {
                                controller.onsignUp();
                              }
                            },
                            style: ElevatedButton.styleFrom(
                                minimumSize: const Size(double.infinity, 50),
                                backgroundColor: kSecondaryColor),
                            child: const Text('Sign Up'),
                          ),
                        ],
                      ),
                    )),
                SizedBox(
                  height: 35.h,
                ),
                //  ? or
                const Text("OR", style: TextStyle(color: kTextColorLight)),
                SizedBox(
                  height: 35.h,
                ),
                //  ? Socil login
                StaggeredGrid.count(
                  crossAxisCount: 3,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(backgroundColor: kWhite),
                      child: Image.asset(
                          width: 20,
                          height: 20,
                          'assets/icons/auth/google.png'),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(backgroundColor: kWhite),
                      child: SvgPicture.asset('assets/icons/auth/fb.svg'),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(backgroundColor: kWhite),
                      child: SvgPicture.asset('assets/icons/auth/twitter.svg'),
                    ),
                  ],
                ),
                15.height,
                RichText(
                    text: TextSpan(
                        style: kBodyLarge.copyWith(color: kTextColorLight),
                        children: [
                      const TextSpan(
                        text: 'Do you have any account? ',
                      ),
                      TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Get.offAllNamed(Routes.SIGN_IN);
                            },
                          text: 'Log in',
                          style: const TextStyle(
                              color: kTextColor, fontWeight: FontWeight.w500)),
                    ])),
              ],
            )),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gas_cylinder/app/core/config/color.dart';
import 'package:gas_cylinder/app/core/config/style.dart';
import 'package:gas_cylinder/app/core/utils/logger.dart';
import 'package:gas_cylinder/app/modules/verifyEmail/views/verify_success_view.dart';
import 'package:gas_cylinder/app/widgets/appbar.dart';

import 'package:get/get.dart';
import 'package:pinput/pinput.dart';

import '../controllers/verify_email_controller.dart';

class VerifyEmailView extends GetView<VerifyEmailController> {
  const VerifyEmailView({super.key});
  @override
  Widget build(BuildContext context) {
    // Status Bar Color
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: kWhite,
      statusBarIconBrightness: Brightness.dark,
    ));
    return SafeArea(
      child: Scaffold(
        appBar: const CustomAppBar(
          title: Text("Verify"),
          bgColor: kWhite,
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
          child: Column(
            children: [
              SizedBox(
                height: 81.h,
              ),
              SvgPicture.asset('assets/icons/auth/email_with_bg.svg'),
              SizedBox(
                height: 40.h,
              ),
              Text(
                'Please Enter The 4 Digit Code That  Was  Sent To 0123456789',
                style: kTitleMedium.copyWith(
                    fontWeight: FontWeight.w400, color: kTextColorLight),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 32.h,
              ),
              // ? otp
              Pinput(
                controller: controller.pinputController,
                defaultPinTheme: PinTheme(
                    width: 64,
                    height: 63,
                    decoration: BoxDecoration(
                      color: kDisabledColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 17,
                    )),
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                ],
                validator: (s) {
                  return s == '2222' ? null : 'Pin is incorrect';
                },
                pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                showCursor: true,
                onCompleted: (pin) => kLogger.i(pin),
              ),
              SizedBox(
                height: 34.h,
              ),
              Text(
                "Didn't receive the code?",
                style: kTitleMedium.copyWith(
                    fontWeight: FontWeight.w400, color: kTextColorLight),
                textAlign: TextAlign.center,
              ),
              GestureDetector(
                onTap: () {},
                child: Text(
                  'Resend Code',
                  style: kTitleMedium.copyWith(
                      fontWeight: FontWeight.w500, color: kTextColor),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              ElevatedButton(
                onPressed: () {
                  Get.to(() => const VerifySuccessView());
                },
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 50),
                    backgroundColor: kSecondaryColor),
                child: const Text('Next'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

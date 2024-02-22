import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gas_cylinder/app/core/config/color.dart';
import 'package:gas_cylinder/app/core/config/style.dart';
import 'package:gas_cylinder/app/core/utils/int_extensions.dart';
import 'package:gas_cylinder/app/routes/app_pages.dart';

import 'package:get/get.dart';

class VerifySuccessView extends GetView {
  const VerifySuccessView({super.key});
  @override
  Widget build(BuildContext context) {
    // Status Bar Color
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: kWhite,
      statusBarIconBrightness: Brightness.dark,
    ));
    return SafeArea(
      child: Scaffold(
          body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              42.height,
              Text(
                "Congrats!",
                style: kHeadlineMedium,
              ),
              3.height,
              Text(
                "Your account has been created!",
                style: kBodyLarge,
              ),
              SizedBox(
                height: 66.h,
              ),
              Expanded(child: Image.asset("assets/images/auth/sylinder.png")),
              ElevatedButton(
                onPressed: () {
                  Get.offAllNamed(Routes.ENTRY_POINT);
                },
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 50),
                    backgroundColor: kSecondaryColor),
                child: const Text('Next'),
              ),
              SizedBox(
                height: 60.h,
              )
            ],
          ),
        ),
      )),
    );
  }
}

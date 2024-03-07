// ignore_for_file: deprecated_member_use

import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import 'package:gas_cylinder/app/core/utils/logger.dart';
import 'package:gas_cylinder/app/modules/profile/controllers/profile_controller.dart';
import 'package:gas_cylinder/app/widgets/network_img.dart';
import 'package:get/get.dart';

import '../core/utils/int_extensions.dart';
import '../core/config/color.dart';
import '../core/config/style.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? title;
  final Color? bgColor;
  final Color? fgColor;
  final Function? onLeading;
  final bool isShadow;
  final bool centerTitle;
  final bool? isPrimary;

  const CustomAppBar({
    super.key,
    this.isShadow = false,
    this.centerTitle = true,
    this.title,
    this.onLeading,
    this.bgColor,
    this.fgColor,
    this.isPrimary = false,
  });
// Specify the desired height of the AppBar
  @override
  Size get preferredSize => Size.fromHeight(isPrimary == true ? 70.0 : 60);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: bgColor ?? kPrimaryColor,
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
            boxShadow: isShadow ? [kAppbarShadow] : []),
        child: AppBar(
          automaticallyImplyLeading: false,
          titleSpacing: 0,
          elevation: 0,
          centerTitle: centerTitle,
          leadingWidth: isPrimary == true ? 80 : 60,
          backgroundColor: Colors.transparent,
          foregroundColor: kTextColor,
          titleTextStyle: kTitleLarge.copyWith(color: fgColor ?? kTextColor),
          // appbar leading
          leading: isPrimary == true
              ? Center(
                  child: GetBuilder<ProfileController>(builder: (context) {
                    var data = context.user;
                    
                    if (data != null) {
                      return Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            color: kWhite,
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: kWhite,
                              width: 3,
                            )),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(800),
                          child: NetworkImg(data.photoURL)),
                      );
                    }
                    return const SizedBox();
                  }),
                )
              : IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: Icon(Icons.arrow_back_ios_new,
                      size: 16, color: fgColor ?? kTextColor)),
          // appbar title
          title: title,
          // appbar actions),
          actions: isPrimary == true
              ? [
                  IconButton(
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                    icon: SvgPicture.asset(
                      'assets/icons/entryPoint/bars.svg',
                      color: fgColor ?? kTextColor,
                    ),
                  ),
                  10.width,
                ]
              : null,
        ));
  }
}

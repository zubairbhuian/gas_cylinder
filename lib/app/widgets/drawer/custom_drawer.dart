import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gas_cylinder/app/core/config/color.dart';
import 'package:gas_cylinder/app/core/utils/app_data.dart';
import 'package:gas_cylinder/app/core/utils/int_extensions.dart';
import 'custom_drawer_header.dart';
import 'custom_drawer_item.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0)
      ),
      backgroundColor: kWhite,
      child: Column(
        children: [
          const CustomDrawerHeader(),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(children: [
                const SizedBox(
                  height: 20,
                ),
                ...List.generate(AppData.drawerItemList.length,(index){
                  var data =AppData.drawerItemList;
                  return CustomDrawerItem(
                    icon: data[index].icon,
                    title: data[index].title,
                    route: data[index].route,
                    );
                }),

                 SizedBox(
                  height: 30.h,
                ),
                GestureDetector(
    onTap: () {
        }, 
    child: Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        children: [
          Container(
            width: 48.sp,
            height: 48.sp,
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [kCardShadow]
            ),
            child: SvgPicture.asset('assets/icons/drawer/logout.svg')),
          10.width,
          Expanded(child: Text('Logout',style: TextStyle(color: kDangerColor,fontWeight: FontWeight.w500,fontSize: 18.sp),))
          ],
      ),
    ),
  )
              ]),
            ),
          ),
        ],
      ),
    );
  }
}



//  child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Text(
//             user.email!,
//             style: const TextStyle(
//                 color: AppColor.green,
//                 fontSize: 16,
//                 fontWeight: FontWeight.w700),
//           ),
//           ElevatedButton.icon(
//               onPressed: () {
//                 firebase.signOut();

//                 Get.off(() => const IntroScreen());
//               },
//               icon: const Text('Logout'),
//               label: const Icon(Icons.logout))
//         ],
//       ),
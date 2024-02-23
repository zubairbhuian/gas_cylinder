import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gas_cylinder/app/core/config/color.dart';
import 'package:gas_cylinder/app/core/config/style.dart';

class SettingsItem extends StatelessWidget {
  final String icon;
  final String title;
  final void Function()? onTap;
  const SettingsItem({super.key, required this.icon, required this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      horizontalTitleGap: 10,
      leading: SvgPicture.asset(icon),
      selectedTileColor: kSecondaryColor,
      title: Text(
        title,
        style: kBodyLarge,
      ),
      trailing: const Icon(
        Icons.arrow_forward_ios_outlined,
        size: 16,
        color: kPrimaryColor,
      ),
      onTap: onTap,
    );
  }
}

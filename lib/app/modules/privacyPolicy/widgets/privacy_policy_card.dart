import 'package:flutter/material.dart';
import 'package:gas_cylinder/app/core/config/color.dart';
import 'package:gas_cylinder/app/core/config/style.dart';
import 'package:gas_cylinder/app/core/utils/int_extensions.dart';

class PrivacyPolicyCard extends StatelessWidget {
  final String title;
  final String description;
  const PrivacyPolicyCard(
      {super.key, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: kTitleLarge,
          ),
          15.height,
          Text(
            description,
            style: kBodyMedium.copyWith(color: kTextColorLight),
          ),
          15.height,
        ],
      ),
    );
  }
}

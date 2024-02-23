import 'package:flutter/material.dart';
import 'package:gas_cylinder/app/core/config/color.dart';
import 'package:gas_cylinder/app/core/config/style.dart';

class ListText extends StatelessWidget {
  final String count;
  final String text;
  const ListText({super.key, required this.count, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(count, style: kBodyMedium.copyWith(color: kTextColorLight)),
        Expanded(child: Text(text, style: kBodyMedium.copyWith(color: kTextColorLight))),
      ],
    );
  }
}

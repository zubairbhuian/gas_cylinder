import 'package:flutter/material.dart';
import 'package:gas_cylinder/app/core/config/color.dart';
import 'package:gas_cylinder/app/core/config/style.dart';

class CustomExpansionTile extends StatefulWidget {
  final String title;
  final String? description;
  final List<Widget>? children;
  const CustomExpansionTile(
      {super.key, required this.title, this.description, this.children});

  @override
  State<CustomExpansionTile> createState() => _CustomExpansionTileState();
}

class _CustomExpansionTileState extends State<CustomExpansionTile> {
  bool isExpended = false;

  get kBlueColor => null;
  @override
  Widget build(BuildContext context) {
    return Theme(
      // ***** hide bottom under line  *****
      data: ThemeData(
        dividerColor: Colors.transparent,
      ),
      child: Container(
        margin: const EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
            // color: kWhite,
            boxShadow: [kCardShadow],
            borderRadius: BorderRadius.circular(24)),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(24),
          child: ExpansionTile(
            collapsedBackgroundColor: kPrimaryColor,
            backgroundColor: kPrimaryColor,
            iconColor: kWhite,
            collapsedIconColor: kWhite,
            collapsedTextColor: kWhite,
            textColor: kWhite,
            
            // ***** trailing  *****
            trailing: widget.children != null
                ? null
                : isExpended
                    ? const Icon(Icons.remove)
                    : const Icon(Icons.add),
            expandedAlignment: Alignment.topLeft,
            childrenPadding:
                const EdgeInsets.only(left: 15, bottom: 15, right: 15),
            // ***** title  *****
            title: Text(
              widget.title,
              style: kTitleSmall.copyWith(
                  color: isExpended ? kWhite : kWhite),
            ),
            children: widget.children ??
                [
                  Text(
                    widget.description ?? '',
                    style: kBodyLarge.copyWith(color: kWhite),
                  ),
                ],
            // ***** onExpansionChanged  *****
            onExpansionChanged: (value) {
              setState(() {
                isExpended = value;
              });
            },
          ),
        ),
      ),
    );
  }
}
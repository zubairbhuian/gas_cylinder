import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:gas_cylinder/app/core/config/color.dart';
import 'package:gas_cylinder/app/core/config/style.dart';

class CustomSearchBar extends StatelessWidget {
  final TextEditingController? controller;
  final bool? obscureText;
  final bool? readOnly;
  final Widget? suffixIcon;
  final Widget? suffixIconColor;
  final Widget? prefixIcon;
  final String? hintText;
  final Widget? label;
  final String? extraLabel;
  final TextStyle? labelStyle;
  final TextStyle? extraLabelStyle;
  final TextStyle? errorStyle;
  final VoidCallback? onTap;
  final AutovalidateMode? autovalidateMode;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final Function(String)? onChange;
  final EdgeInsetsGeometry? padding;
  final Color? cursorColor;
  final TextAlign? textAlign;
  final double? fontSize;
  final List<TextInputFormatter>? inputFormatters;
  final bool? autofocus;

  final TextStyle? style;
  final String? errorText;
  final VoidCallback? onEditingComplete;
  final int? maxLines;
  final double? marginBottom;

  const CustomSearchBar(
      {super.key,
      this.controller,
      this.obscureText,
      this.readOnly,
      this.suffixIcon,
      this.prefixIcon,
      this.hintText,
      this.label,
      this.onTap,
      this.autovalidateMode,
      this.keyboardType,
      this.validator,
      this.onChange,
      this.padding,
      this.cursorColor,
      this.inputFormatters,
      this.autofocus,
      this.textAlign,
      this.fontSize,
      this.style,
      this.errorText,
      this.onEditingComplete,
      this.maxLines,
      this.suffixIconColor,
      this.extraLabel,
      this.extraLabelStyle,
      this.labelStyle,
      this.errorStyle,
      this.marginBottom});

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(18),
            child: TextFormField(
              // ********** controller ********
              controller: controller,
              // ********** validator ********
              validator: validator,
              // ********** onChanged ********
              onChanged: onChange,
              // ********** obscureText ********
              obscureText: obscureText ?? false,
              // ********** readOnly ********
              readOnly: readOnly ?? false,
              // ********** autovalidateMode ********
              autovalidateMode: autovalidateMode,
              // ********** cursorColor ********
              cursorColor: cursorColor ?? kPrimaryColor,
              // ********** maxLines ********
              maxLines: maxLines ?? 1,
              // ********** autofocus ********
              autofocus: autofocus ?? false,
              // ********** textAlign ********
              textAlign: textAlign ?? TextAlign.start,
              // ********** onTap ********
              onTap: onTap,
              // ********** style ********
              style: style ?? kBodyLarge,
              // ********** controller ********
              onEditingComplete: onEditingComplete,
              // ********** keyboardType ********
              keyboardType: keyboardType,
              //! ********** decoration ********
              decoration: InputDecoration(
                filled: true,
                fillColor: kPrimaryColor.withOpacity(.1),
                // ********** errorText ********
                errorText: errorText,
                errorStyle:
                    errorStyle ?? kBodyLarge.copyWith(color: kDangerColor),
                errorMaxLines: 5,
                // ********** padding ********
                contentPadding: padding ??
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 25),
                // ********** prefixIcon ********
                prefixIcon: prefixIcon,
                // ********** suffixIcon ********
                suffixIcon: suffixIcon?? const Icon(Icons.location_on),
                // ********** border ********
                border: InputBorder.none,
                // ********** focusedBorder ********
                focusColor: kPrimaryColor,
                focusedBorder: InputBorder.none,
                // ********** enabledBorder ********
                enabledBorder: InputBorder.none,
                // ********** errorBorder ********
                errorBorder: InputBorder.none,
                // ********** hintText ********
                hintText: hintText,
                hintStyle: kBodyLarge.copyWith(color: kTextColor),
                // ********** label ********
                label: label,
                labelStyle: labelStyle ?? kBodyLarge,
              ),
              // ********** inputFormatters ********
              inputFormatters:
                  inputFormatters ?? [LengthLimitingTextInputFormatter(40)],
            ),
          ),
          // ********** marginBottom ********
          SizedBox(
            height: marginBottom ?? 15,
          )
        ],
      );
}

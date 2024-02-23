import 'package:flutter/material.dart';

import '../core/config/color.dart';
import '../core/config/fonts.dart';
import '../core/config/style.dart';

class PrimaryBtn extends StatelessWidget {
  final Color? color;
  final Color? textColor;
  final Widget child;
  final Function()? onPressed;
  final double? borderRadius;
  final double? height;
  final double? width;
  final double? elevation;
  final TextStyle? style;
  final EdgeInsetsGeometry? padding;
  final BorderSide? side;

  const PrimaryBtn({
    super.key,
    this.color,
    this.textColor,
    required this.onPressed,
    this.borderRadius,
    this.style,
    this.height,
    this.width,
    this.elevation,
    this.padding,
    required this.child,
    this.side,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(boxShadow: [kbtnShadow]),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            elevation: elevation ?? 1,
            textStyle:
                style ?? kLabelLarge.copyWith(color: textColor ?? kWhite),
            disabledBackgroundColor: kDisabledColor,
            disabledForegroundColor: kDisabledTextColor,
            backgroundColor: color ?? kPrimaryColor,
            foregroundColor: textColor ?? kWhite,
            padding: padding ??
                const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius ?? 8),
            ),
            // ****** Border color *******
            side: side
            // const BorderSide(
            //   color: kPrimaryColor,
            //   width: 0,
            // ),
            ),
        child: child,
      ),
    );
  }
}

class OutLineBtn extends StatelessWidget {
  final Color? backgroundColor;
  final Widget child;
  final Color? foregroundColor;
  final VoidCallback? onPressed;
  final double? borderRadius;
  final EdgeInsetsGeometry? padding;
  final double? height;
  final double? width;
  final TextStyle? textStyle;

  const OutLineBtn(
      {super.key,
      this.backgroundColor,
      this.foregroundColor,
      this.onPressed,
      this.borderRadius,
      this.padding,
      this.height,
      this.width,
      this.textStyle,
      required this.child});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: OutlinedButton(
          style: OutlinedButton.styleFrom(
            padding: padding ??
                const EdgeInsets.symmetric(vertical: 0, horizontal: 15),
            foregroundColor: foregroundColor ?? const Color(0xffFF5C5F),
            side:  BorderSide(width: 1, color: const Color(0xffFF5C5F).withOpacity(.4)),
            backgroundColor: backgroundColor ??kWhite,
            disabledForegroundColor: kWhite,
            disabledBackgroundColor: kDisabledColor,
            textStyle: textStyle ??
                const TextStyle(
                    color: kRed,
                    fontFamily: Fonts.primary,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
            // shape: RoundedRectangleBorder(
            //   borderRadius: BorderRadius.circular(
            //       borderRadius ?? 16.r), // Change the border radius value
            // ),
          ),
          onPressed: onPressed,
          child: child),
    );
  }
}

class ThineBtn extends StatelessWidget {
  final void Function()? onPressed;
  final Color? backgroundColor;
  final String text;
  final Color? foregroundColor;
  final TextStyle? style;
  const ThineBtn(this.text,
      {super.key,
      required this.onPressed,
      this.backgroundColor,
      this.foregroundColor, this.style});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        side:  BorderSide.none,
          backgroundColor: backgroundColor ?? kPrimaryColor,
          foregroundColor: foregroundColor ?? kWhite,
          
          shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(12), // Change the border radius value
          ),
          padding: const EdgeInsets.symmetric(horizontal: 12)),
      child: Text(
        text,
        style:style??  TextStyle(
            color:foregroundColor?? kWhite, fontSize: 12, fontWeight: FontWeight.w400),
      ),
    );
  }
}

class GradientBtn extends StatelessWidget {
  const GradientBtn({
    super.key,
    required this.text,
    this.onTap,
  });

  final String text;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 130,
        padding: const EdgeInsets.symmetric(
          vertical: 13,
        ),
        decoration: BoxDecoration(
          gradient: onTap == null
              ? const LinearGradient(
                  colors: [
                    Color(0xffC2C2C2),
                    Color(0xffC2C2C2)
                  ], // Define your gradient colors
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                )
              : const LinearGradient(
                  colors: [
                    Color(0xff9F9F9F),
                    Color(0xff9F9F9F)
                  ], // Define your gradient colors
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
          borderRadius:
              BorderRadius.circular(50), // Optional: Add border radius
        ),
        child: Center(
          child: Text(
            text,
            style: kLabelMedium.copyWith(color: kWhite),
          ),
        ),
      ),
    );
  }
}

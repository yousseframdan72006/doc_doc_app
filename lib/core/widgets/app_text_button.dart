import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/theming/colors.dart';
import 'package:flutter_complete_project/core/theming/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class AppTextButton extends StatelessWidget {
  const AppTextButton({
    super.key,
    this.borderRadius,
    this.backGround,
    this.size,
    this.padding,
    required this.textStyle,
    required this.buttonText,
    required this.onPressed,
  });

  final double? borderRadius;
  final Color? backGround;
  final Size? size;
  final Padding? padding;
  final TextStyle textStyle;
  final String buttonText;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        shape: WidgetStatePropertyAll<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 16.0),
          ),
        ),

        backgroundColor: WidgetStatePropertyAll<Color>(
          backGround ?? ColorsManger.mainBlue,
        ),
        fixedSize: WidgetStatePropertyAll<Size>(
          size ?? Size(double.maxFinite, 50.h),
        ),
      ),
      onPressed: onPressed,
      child: Text(buttonText, style: textStyle),
    );
  }
}

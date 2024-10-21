import 'package:department_doctor_app/core/theme/app_colors.dart';
import 'package:department_doctor_app/core/theme/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppButton extends StatelessWidget {
  final String textBtn;
  final Color? backgroundColor;
  final double? radius;
  final double? width;
  final double? height;
  final TextStyle? style;
  final VoidCallback onTap;
  const AppButton({
    super.key,
    required this.textBtn,
    required this.onTap,
    this.backgroundColor,
    this.radius,
    this.width,
    this.height,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      style: ButtonStyle(
          backgroundColor:
              WidgetStatePropertyAll(backgroundColor ?? AppColors.prinmary),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          shape: WidgetStatePropertyAll(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(radius?.r ?? 15.r))),
          minimumSize: WidgetStatePropertyAll(
              Size(width?.w ?? double.infinity, height?.h ?? 50.h))),
      child: Text(
        textBtn,
        style: style ??
            AppTextStyle.font18whitew500.copyWith(
              height: 1.5,
            ),
      ),
    );
  }
}

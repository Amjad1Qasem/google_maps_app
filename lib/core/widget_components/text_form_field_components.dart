import 'package:department_doctor_app/core/theme/app_colors.dart';
import 'package:department_doctor_app/core/theme/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFormField extends StatelessWidget {
  final String hintText;
  final bool? obscureText;
  final Color? fillColor;
  final Color? focusedBorderColor;
  final Color? enableBorderColor;
  final double? borderRadius;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final EdgeInsetsGeometry? contentPadding;
  const AppTextFormField({
    super.key,
    required this.hintText,
    this.obscureText,
    this.fillColor,
    this.focusedBorderColor,
    this.enableBorderColor,
    this.borderRadius,
    this.suffixIcon,
    this.prefixIcon,
    this.contentPadding,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText ?? false,
      style: AppTextStyle.font14lightgrayw400,
      decoration: InputDecoration(
        isDense: true, //to control in padding
        hintStyle: AppTextStyle.font14lightgrayw400,
        hintText: hintText,
        filled: true,
        fillColor: fillColor ?? AppColors.lighterthanGray,
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        contentPadding: contentPadding ??
            EdgeInsetsDirectional.symmetric(horizontal: 20.w, vertical: 18.h),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius?.r ?? 17.r),
          borderSide: BorderSide(color: AppColors.lighterGray, width: 1.5.w),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius?.r ?? 17.r),
          borderSide: BorderSide(color: AppColors.prinmary, width: 1.5.w),
        ),
      ),
    );
  }
}

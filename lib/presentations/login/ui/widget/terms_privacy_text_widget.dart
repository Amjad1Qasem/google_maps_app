
import 'package:department_doctor_app/core/theme/app_colors.dart';
import 'package:department_doctor_app/core/theme/text_styles.dart';
import 'package:flutter/material.dart';

class TermsAndPrivacyTextWidget extends StatelessWidget {
  const TermsAndPrivacyTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
        textAlign: TextAlign.center,
        text: TextSpan(children: [
          TextSpan(
            text: 'By logging, you agree to our ',
            style: AppTextStyle.font12grayw400
                .copyWith(color: AppColors.lighterthan1Gray),
          ),
          TextSpan(
              text: 'Terms & Conditions', style: AppTextStyle.font12grayw400),
          TextSpan(
            text: ' and ',
            style: AppTextStyle.font12grayw400
                .copyWith(color: AppColors.lighterthan1Gray),
          ),
          TextSpan(
            text: 'PrivacyPolicys',
            style: AppTextStyle.font12grayw400,
          ),
        ]));
  }
}

import 'package:department_doctor_app/core/helpers/common_size.dart';
import 'package:department_doctor_app/core/helpers/extension_navigator.dart';
import 'package:department_doctor_app/core/routing/routs.dart';
import 'package:department_doctor_app/core/theme/text_styles.dart';
import 'package:department_doctor_app/core/widget_components/button_component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingButtonWidget extends StatelessWidget {
  const OnboardingButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.sp),
      child: Column(
        children: [
          Text(
            'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
            textAlign: TextAlign.center,
            style: AppTextStyle.font12grayw400.copyWith(
              height: 1.3,
            ),
          ),
          CommonSizes.vSmallSpace,
          AppButton(
            textBtn: 'Get Started',
            onTap: () =>
                context.pushReplacementNamed(AppRouterPath.loginScreen),
          )
        ],
      ),
    );
  }
}

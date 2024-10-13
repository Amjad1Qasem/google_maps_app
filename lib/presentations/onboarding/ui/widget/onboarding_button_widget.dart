import 'package:department_doctor_app/core/helpers/common_size.dart';
import 'package:department_doctor_app/core/theme/app_colors.dart';
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
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  height: 1.3,
                ),
          ),
          CommonSizes.vSmallSpace,
          TextButton(
            onPressed: () {},
            style: ButtonStyle(
                backgroundColor:
                    const WidgetStatePropertyAll(AppColors.prinmary),
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.r))),
                minimumSize:
                    WidgetStatePropertyAll(Size(double.infinity, 50.h))),
            child: Text(
              'Get Started',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    height: 1.5,
                    fontSize: 18.sp,
                    color: Colors.white,
                  ),
            ),
          )
        ],
      ),
    );
  }
}

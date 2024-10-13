import 'package:department_doctor_app/core/helpers/app_images.dart';
import 'package:department_doctor_app/core/helpers/common_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingTitleWidget extends StatelessWidget {
  const OnBoardingTitleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 30.sp, bottom: 30.sp),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: const AssetImage(AppImages.logoImage),
            width: 35.sp,
          ),
          CommonSizes.hSmallestSpace,
          Text(
            'Docdoc',
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(color: Colors.black),
          ),
        ],
      ),
    );
  }
}

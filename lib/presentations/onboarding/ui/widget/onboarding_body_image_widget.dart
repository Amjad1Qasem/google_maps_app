import 'package:department_doctor_app/core/helpers/app_images.dart';
import 'package:department_doctor_app/core/theme/app_colors.dart';
import 'package:department_doctor_app/core/theme/text_styles.dart';
import 'package:flutter/material.dart';

class OnboardingBodyImageWidget extends StatelessWidget {
  const OnboardingBodyImageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Transform.scale(
          scaleX: 1.1,
          scaleY: 1,
          child: const Image(
            image: AssetImage(
              AppImages.bgSplashImage,
            ),
          ),
        ),
        Container(
            foregroundDecoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [
                      AppColors.white,
                      AppColors.white.withOpacity(0.0),
                    ],
                    end: Alignment.topCenter,
                    begin: Alignment.bottomCenter,
                    stops: const [0.14, 0.4])),
            child: const Image(image: AssetImage(AppImages.onBoardingImage))),
        Positioned(
          bottom: 25,
          child: Text(
            'Best Doctor\nAppointment App',
            textAlign: TextAlign.center,
            style: AppTextStyle.font35prinmaryW700.copyWith(
              height: 1.4,
            ),
          ),
        ),
      ],
    );
  }
}

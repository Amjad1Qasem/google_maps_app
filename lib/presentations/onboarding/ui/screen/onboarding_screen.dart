import 'package:department_doctor_app/presentations/onboarding/ui/widget/onboarding_body_image_widget.dart';
import 'package:department_doctor_app/presentations/onboarding/ui/widget/onboarding_button_widget.dart';
import 'package:department_doctor_app/presentations/onboarding/ui/widget/onboarding_title_widget.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              OnBoardingTitleWidget(),
              OnboardingBodyImageWidget(),
              OnboardingButtonWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

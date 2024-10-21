import 'package:department_doctor_app/core/theme/text_styles.dart';
import 'package:flutter/material.dart';

class AlradySignUpTextWidget extends StatelessWidget {
  const AlradySignUpTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(children: [
            TextSpan(
                text: 'Already have an account yet? ',
                style: AppTextStyle.font12grayw400),
            TextSpan(
                text: 'Sign Up',
                style: AppTextStyle.font12prinmaryw400
                    .copyWith(fontWeight: FontWeight.bold)),
          ])),
    );
  }
}

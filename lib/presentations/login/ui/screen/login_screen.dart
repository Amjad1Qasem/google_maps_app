import 'package:department_doctor_app/core/theme/text_styles.dart';
import 'package:department_doctor_app/core/utils/spacer.dart';
import 'package:department_doctor_app/core/widget_components/button_component.dart';
import 'package:department_doctor_app/core/widget_components/text_form_field_components.dart';
import 'package:department_doctor_app/presentations/login/ui/widget/alrady_sign_up_text_widget.dart';
import 'package:department_doctor_app/presentations/login/ui/widget/terms_privacy_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool obscureText = true;
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.sp, vertical: 60.sp),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Welcome Back', style: AppTextStyle.font24prinmaryW700),
                verticalSpacer(10),
                Text(
                    'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
                    style:
                        AppTextStyle.font14lightgrayw400.copyWith(height: 1.5)),
                verticalSpacer(80),
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      const AppTextFormField(
                        hintText: 'Email',
                      ),
                      verticalSpacer(24),
                      AppTextFormField(
                        hintText: 'Pass',
                        obscureText: obscureText,
                        suffixIcon: GestureDetector(
                          onTap: () => setState(() {
                            obscureText = !obscureText;
                          }),
                          child: Icon(obscureText
                              ? Icons.visibility_off
                              : Icons.visibility),
                        ),
                      ),
                      verticalSpacer(18),
                      Align(
                        alignment: AlignmentDirectional.topEnd,
                        child: GestureDetector(
                          onTap: () {},
                          child: Text(
                            'Forgot Password?',
                            style: AppTextStyle.font12prinmaryw400,
                          ),
                        ),
                      ),
                      verticalSpacer(24),
                      AppButton(
                        textBtn: 'Login',
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
                verticalSpacer(60),
                const TermsAndPrivacyTextWidget(),
                verticalSpacer(24),
                const AlradySignUpTextWidget()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

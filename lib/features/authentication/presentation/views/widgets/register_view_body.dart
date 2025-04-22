import 'package:doc_doc/features/authentication/presentation/views/widgets/register_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/widgets/custom_button.dart';
import 'already_have_account.dart';
import 'male_or_female.dart';
import 'register_text_fields.dart';
import 'sign_in_divider.dart';
import 'social_media_buttons.dart';
import 'terms_and_conditions_text.dart';

class RegisterViewBody extends StatelessWidget {
  const RegisterViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.0),
      child: SingleChildScrollView(
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RegisterHeader(),
              SizedBox(height: 30.h),
              RegisterTextFields(),
              SizedBox(height: 20.h),
              MaleOrFemale(),
              SizedBox(height: 20.h),
              CustomButton(onPressed: () {}, text: 'Create Account'),
              SizedBox(height: 30.h),
              SignInDivider(),
              SizedBox(height: 20.h),
              SocialMediaButtons(),
              SizedBox(height: 34.h),
              TermsAndConditionsText(),
              SizedBox(height: 24.h),
              AlreadyHaveAccount(),
              SizedBox(height: 24.h),
            ],
          ),
        ),
      ),
    );
  }
}

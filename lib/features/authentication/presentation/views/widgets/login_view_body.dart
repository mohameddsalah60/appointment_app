import 'package:doc_doc/core/widgets/custom_button.dart';
import 'package:doc_doc/features/authentication/presentation/views/widgets/text_fields_login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../cubits/cubit/login_cubit.dart';
import 'dont_have_an_account.dart';
import 'login_bloc_listenr.dart';
import 'login_body_header.dart';
import 'login_remember_me_and_forget_password.dart';
import 'sign_in_divider.dart';
import 'social_media_buttons.dart';
import 'terms_and_conditions_text.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LoginBodyHeader(),
            SizedBox(height: 36.h),
            TextFieldsLogin(),
            SizedBox(height: 16.h),
            RememberMeAndForgetPassword(),
            SizedBox(height: 30.h),
            CustomButton(
              onPressed: () {
                context.read<LoginCubit>().emitLoginStates();
              },
              text: 'Login',
            ),
            SizedBox(height: 30.h),
            SignInDivider(),
            SizedBox(height: 20.h),
            SocialMediaButtons(),
            SizedBox(height: 34.h),
            TermsAndConditionsText(),
            SizedBox(height: 24.h),
            DontHaveAnAccount(),
            LoginBlocListenr(),
          ],
        ),
      ),
    );
  }
}

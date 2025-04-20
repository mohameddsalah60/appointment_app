import 'package:doc_doc/core/helpers/extinctions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/routing/app_routes.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';

class DontHaveAnAccount extends StatelessWidget {
  const DontHaveAnAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Don’t have an account?',
          style: AppTextStyles.fontWeight400Size12.copyWith(
            color: Colors.black,
          ),
        ),
        SizedBox(width: 5.w),
        GestureDetector(
          onTap: () {
            context.pushNamed(AppRoutes.signUpView);
          },
          child: Text(
            'Sign Up',
            style: AppTextStyles.fontWeight400Size12.copyWith(
              color: AppColors.mainBlue,
            ),
          ),
        ),
      ],
    );
  }
}

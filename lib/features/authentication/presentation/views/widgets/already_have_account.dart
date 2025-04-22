import 'package:doc_doc/core/helpers/extinctions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/routing/app_routes.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';

class AlreadyHaveAccount extends StatelessWidget {
  const AlreadyHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Already have an account?',
          style: AppTextStyles.fontWeight400Size14,
        ),
        SizedBox(width: 5.w),
        GestureDetector(
          onTap: () {
            context.pushReplacementNamed(AppRoutes.login);
          },
          child: Text(
            'Login',
            style: AppTextStyles.fontWeight400Size14.copyWith(
              color: AppColors.mainBlue,
            ),
          ),
        ),
      ],
    );
  }
}

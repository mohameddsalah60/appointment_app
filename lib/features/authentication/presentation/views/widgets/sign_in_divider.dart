import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';

class SignInDivider extends StatelessWidget {
  const SignInDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(child: Divider(color: AppColors.greyDark, thickness: 1)),
        Text(
          '   Or sign in with   ',
          style: AppTextStyles.fontWeight400Size12.copyWith(
            color: AppColors.greyDark,
          ),
        ),
        Expanded(child: Divider(color: AppColors.greyDark, thickness: 1)),
      ],
    );
  }
}

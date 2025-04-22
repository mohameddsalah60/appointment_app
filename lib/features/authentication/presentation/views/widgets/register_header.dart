import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/app_text_styles.dart';

class RegisterHeader extends StatelessWidget {
  const RegisterHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 36.h),
        Text('Create an account', style: AppTextStyles.fontWeight700Size24),
        SizedBox(height: 20.h),
        Text(
          "Sign up now and start exploring all that our app has to offer. We're excited to welcome you to our community!",
          maxLines: 3,
          style: AppTextStyles.fontWeight400Size14,
          textAlign: TextAlign.start,
        ),
      ],
    );
  }
}

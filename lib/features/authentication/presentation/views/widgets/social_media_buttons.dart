import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/app_images.dart';
import 'social_media_button.dart';

class SocialMediaButtons extends StatelessWidget {
  const SocialMediaButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SocialMediaButton(imagePath: AppImages.google),
        SizedBox(width: 20.w),
        SocialMediaButton(imagePath: AppImages.facebook),
        SizedBox(width: 20.w),
        SocialMediaButton(imagePath: AppImages.apple),
      ],
    );
  }
}

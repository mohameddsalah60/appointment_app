import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/app_colors.dart';

class SocialMediaButton extends StatelessWidget {
  const SocialMediaButton({super.key, required this.imagePath, this.onTap});
  final String imagePath;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.r),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100.r),
        color: AppColors.wheitDark,
      ),
      child: GestureDetector(
        onTap: onTap,
        child: Image.asset(imagePath, height: 32.h, width: 32.w),
      ),
    );
  }
}

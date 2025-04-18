import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/utils/app_images.dart';

class DocLogoAndDocText extends StatelessWidget {
  const DocLogoAndDocText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(AppImages.appLogo),
        SizedBox(width: 10.w),
        Text(
          'DocDoc',
          style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.w700),
        ),
      ],
    );
  }
}

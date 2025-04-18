import 'package:doc_doc/core/utils/app_colors.dart';
import 'package:doc_doc/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/utils/app_images.dart';

class DoctorAndLogoLowOpicty extends StatelessWidget {
  const DoctorAndLogoLowOpicty({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset(AppImages.appLogoLowOpiecty),

        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.white, Colors.white.withValues(alpha: 0.0)],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: const [0.14, 0.4],
            ),
          ),
          child: Image.asset(AppImages.onBoardingDoctor),
        ),
        Positioned(
          top: 400.h,
          right: 0,
          left: 0,
          child: Text(
            'Best Doctor Appointment App',
            maxLines: 2,
            textAlign: TextAlign.center,
            style: AppTextStyles.fontWeight700Size32.copyWith(
              color: AppColors.mainBlue,
            ),
          ),
        ),
      ],
    );
  }
}

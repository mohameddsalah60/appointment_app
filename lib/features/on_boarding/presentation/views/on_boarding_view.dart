import 'package:doc_doc/core/helpers/extinctions.dart';
import 'package:doc_doc/core/routing/app_routes.dart';
import 'package:doc_doc/core/utils/app_colors.dart';
import 'package:doc_doc/core/utils/app_text_styles.dart';
import 'package:doc_doc/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/doc_logo_and_doc_text.dart';
import '../widgets/doctor_and_logo_low_opicty.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 30.0.h, bottom: 30.0.h),
            child: Column(
              children: [
                DocLogoAndDocText(),
                SizedBox(height: 40.h),
                DoctorAndLogoLowOpicty(),
                SizedBox(height: 16.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0.h),
                  child: Text(
                    'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
                    maxLines: 2,
                    textAlign: TextAlign.center,
                    style: AppTextStyles.fontWeight400Size12.copyWith(
                      color: AppColors.grey,
                    ),
                  ),
                ),
                SizedBox(height: 24.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0.h),
                  child: CustomButton(
                    onPressed: () {
                      context.pushNamed(AppRoutes.login);
                    },
                    text: 'Get Started',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

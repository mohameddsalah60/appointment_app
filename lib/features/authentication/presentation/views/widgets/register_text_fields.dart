import 'package:doc_doc/features/authentication/presentation/views/widgets/phone_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/widgets/custom_text_field.dart';

class RegisterTextFields extends StatelessWidget {
  const RegisterTextFields({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextFromField(hintText: 'Full Name'),
        SizedBox(height: 20.h),
        CustomTextFromField(hintText: 'Email'),
        SizedBox(height: 20.h),
        PhoneField(),
        SizedBox(height: 20.h),
        CustomTextFromField(hintText: 'Password'),
        SizedBox(height: 20.h),
        CustomTextFromField(hintText: 'Confirm Password'),
      ],
    );
  }
}

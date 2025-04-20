import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/widgets/custom_text_field.dart';

class TextFieldsLogin extends StatelessWidget {
  const TextFieldsLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextFromField(hintText: 'Email'),
        SizedBox(height: 16.h),
        CustomTextFromField(hintText: 'Password'),
        SizedBox(height: 16.h),
      ],
    );
  }
}

import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';

class LoginCheckBox extends StatelessWidget {
  const LoginCheckBox({super.key, required this.isChecked, this.onChanged});
  final bool isChecked;
  final void Function(bool? value)? onChanged;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: isChecked,
      onChanged: onChanged,
      side: BorderSide(color: AppColors.greyCheckBox, width: 2),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      activeColor: AppColors.mainBlue,
      checkColor: AppColors.wheitSecondary,
    );
  }
}

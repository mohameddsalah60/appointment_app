import 'package:flutter/material.dart';
import 'package:phone_form_field/phone_form_field.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';

class PhoneField extends StatelessWidget {
  const PhoneField({super.key, this.autovalidateMode, this.onSaved});
  final AutovalidateMode? autovalidateMode;
  final void Function(PhoneNumber?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return PhoneFormField(
      autovalidateMode: autovalidateMode,
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.wheitSecondary,
        hintText: 'Phone Number',
        hintStyle: AppTextStyles.fontWeight500Size14,
        focusedBorder: buildBorder(),
        enabledBorder: buildBorder(),
        border: buildBorder(),
      ),
      style: AppTextStyles.fontWeight500Size14.copyWith(
        color: const Color(0xff000000),
      ),
      initialValue: PhoneNumber.parse('+20'),
      countrySelectorNavigator: const CountrySelectorNavigator.page(),
      onSaved: onSaved,
      validator: (phoneNumber) {
        if (phoneNumber == null) {
          return 'Please enter a valid phone number';
        }
        return null;
      },
      enabled: true,
      isCountrySelectionEnabled: true,
      isCountryButtonPersistent: true,
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderSide: const BorderSide(width: 1, color: AppColors.greyBorder),
      borderRadius: BorderRadius.circular(16),
    );
  }
}

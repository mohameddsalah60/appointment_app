import 'package:doc_doc/core/helpers/extinctions.dart';
import 'package:doc_doc/core/routing/app_routes.dart';
import 'package:doc_doc/core/utils/app_colors.dart';
import 'package:doc_doc/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubits/cubit/login_cubit.dart';
import 'login_check_box.dart';

class RememberMeAndForgetPassword extends StatefulWidget {
  const RememberMeAndForgetPassword({super.key});

  @override
  State<RememberMeAndForgetPassword> createState() =>
      _RememberMeAndForgetPasswordState();
}

class _RememberMeAndForgetPasswordState
    extends State<RememberMeAndForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        LoginCheckBox(
          isChecked: context.read<LoginCubit>().isChecked,
          onChanged: (value) {
            setState(() {
              context.read<LoginCubit>().isChecked = value!;
            });
          },
        ),
        Text(
          'Remember me',
          style: AppTextStyles.fontWeight400Size12.copyWith(
            color: AppColors.grey,
          ),
        ),
        Spacer(),
        TextButton(
          onPressed: () {
            context.pushNamed(AppRoutes.forgetPassword);
          },
          child: Text(
            'Forget password?',
            style: AppTextStyles.fontWeight400Size12.copyWith(
              color: AppColors.mainBlue,
            ),
          ),
        ),
      ],
    );
  }
}

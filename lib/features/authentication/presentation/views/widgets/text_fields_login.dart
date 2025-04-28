import 'package:doc_doc/core/helpers/app_regex.dart';
import 'package:doc_doc/core/services/shared_preferences_service.dart';
import 'package:doc_doc/features/authentication/presentation/cubits/cubit/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../../core/services/cache_constants.dart';
import '../../../../../core/widgets/custom_text_field.dart';
import 'password_validations.dart';

class TextFieldsLogin extends StatefulWidget {
  const TextFieldsLogin({super.key});

  @override
  State<TextFieldsLogin> createState() => _TextFieldsLoginState();
}

class _TextFieldsLoginState extends State<TextFieldsLogin> {
  bool hasLowercase = false;
  bool hasUppercase = false;
  bool hasSpecialCharacters = false;
  bool hasNumber = false;
  bool hasMinLength = false;
  late TextEditingController emailController;
  late TextEditingController passwordController;

  @override
  void initState() {
    super.initState();
    passwordController = context.read<LoginCubit>().passwordController;
    setupPasswordControllerListener();
  }

  void setupPasswordControllerListener() {
    passwordController.addListener(() {
      setState(() {
        hasLowercase = AppRegex.hasLowerCase(passwordController.text);
        hasUppercase = AppRegex.hasUpperCase(passwordController.text);
        hasSpecialCharacters = AppRegex.hasSpecialCharacter(
          passwordController.text,
        );
        hasNumber = AppRegex.hasNumber(passwordController.text);
        hasMinLength = AppRegex.hasMinLength(passwordController.text);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().formKey,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Column(
        children: [
          CustomTextFromField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'This field email is required.';
              } else if (!AppRegex.isEmailValid(value)) {
                return 'Please enter a valid email address.';
              }
              return null;
            },
            hintText: 'Email',
            controller: context.read<LoginCubit>().emailController,
          ),
          SizedBox(height: 16.h),
          CustomTextFromField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'This field password number is required.';
              } else if (!AppRegex.isPasswordValid(value)) {
                return 'Please enter a valid password number.';
              }
              return null;
            },

            hintText: 'Password',
            controller: context.read<LoginCubit>().passwordController,
          ),
          SizedBox(height: 16.h),
          PasswordValidations(
            hasLowerCase: hasLowercase,
            hasUpperCase: hasUppercase,
            hasSpecialCharacters: hasSpecialCharacters,
            hasNumber: hasNumber,
            hasMinLength: hasMinLength,
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    passwordController.removeListener(() {});
    passwordController.dispose();
    super.dispose();
  }
}

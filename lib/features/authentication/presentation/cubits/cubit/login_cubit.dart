import 'dart:developer';

import 'package:doc_doc/core/services/cache_constants.dart';
import 'package:doc_doc/features/authentication/data/models/login_request_body.dart';
import 'package:doc_doc/features/authentication/data/repos/login_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/services/shared_preferences_service.dart';
import '../../../data/models/login_response.dart';

part 'login_state.dart';
part 'login_cubit.freezed.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this.loginRepo) : super(LoginState.initial());
  final LoginRepo loginRepo;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController(
    text: SharedPreferencesService.getString(AppConstants.emailCache) ?? '',
  );
  TextEditingController passwordController = TextEditingController();
  bool isChecked = false;

  void emitLoginStates() async {
    if (!formKey.currentState!.validate()) {
      return;
    }
    emit(const LoginState.loading());
    var response = await loginRepo.login(
      LoginRequestBody(
        email: emailController.text,
        password: passwordController.text,
      ),
    );

    response.fold(
      (error) {
        emit(LoginState.error(error.message!));
      },
      (loginResponse) async {
        await isRememberMe(emailController.text);

        emit(LoginState.success(loginResponse));
      },
    );
  }

  Future<void> isRememberMe(String email) async {
    if (isChecked) {
      await SharedPreferencesService.setData(
        key: AppConstants.emailCache,
        value: email,
      );
    } else {
      final emailCache = SharedPreferencesService.getString(
        AppConstants.emailCache,
      );
      if (emailCache != null) {
        await SharedPreferencesService.remove(AppConstants.emailCache);
      }
    }
  }
}

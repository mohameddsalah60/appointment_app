import 'package:doc_doc/core/di/getit_service_loacator.dart';
import 'package:doc_doc/features/authentication/presentation/cubits/cubit/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/repos/login_repo.dart';
import 'widgets/login_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(getIt<LoginRepo>()),
      child: const Scaffold(body: SafeArea(child: LoginViewBody())),
    );
  }
}

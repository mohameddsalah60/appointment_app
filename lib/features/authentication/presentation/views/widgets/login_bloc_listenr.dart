import 'package:doc_doc/core/helpers/extinctions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/routing/app_routes.dart';
import '../../../../../core/widgets/custom_loading.dart';
import '../../cubits/cubit/login_cubit.dart';

class LoginBlocListenr extends StatelessWidget {
  const LoginBlocListenr({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is Error) {
          context.pop();
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.message), backgroundColor: Colors.red),
          );
        } else if (state is Success) {
          context.pop();
          context.pushReplacementNamed(AppRoutes.home);
          // Handle successful login
        } else {
          loadingState(context, state is Loading ? true : false);
        }
      },
      child: Container(),
    );
  }
}

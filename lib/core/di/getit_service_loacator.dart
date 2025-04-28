import 'package:dio/dio.dart';
import 'package:doc_doc/core/networking/api_service.dart';
import 'package:doc_doc/features/authentication/data/repos/login_repo.dart';
import 'package:get_it/get_it.dart';

import '../../features/authentication/presentation/cubits/cubit/login_cubit.dart';
import '../networking/dio_factory.dart';

final getIt = GetIt.instance;

void setup() {
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));
}

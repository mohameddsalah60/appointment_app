import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory {
  //private constructor
  DioFactory._();
  static Dio? dio;

  static Dio getDio() {
    Duration timeout = const Duration(seconds: 30);
    if (dio == null) {
      dio = Dio();
      dio!.options.connectTimeout = timeout;

      dio!.options.receiveTimeout = timeout;
      dio!.options.validateStatus = (status) {
        return status! < 500; // Accept all status codes below 500
      };

      dio!.options.headers['Accept'] = 'application/json';
      dio!.options.headers['Content-Type'] = 'application/json';
      addDioInterceptor();
      return dio!;
    } else {
      return dio!;
    }
  }

  static void addDioInterceptor() {
    dio?.interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseHeader: true,
      ),
    );
  }
}

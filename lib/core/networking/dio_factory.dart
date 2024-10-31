import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory {
  ///Private consturter <I don't want to allow create an instance of this class >
  DioFactory._();
  static Dio? dio;

  static gitDio() {
    Duration timeOut = const Duration(seconds: 30);
    if (dio == null) {
      dio ??= Dio();
      dio
        ?..options.connectTimeout = timeOut
        ..options.receiveTimeout = timeOut;
      addDioInterceptor();
      return dio;
    } else {
      return dio;
    }
  }

  static void addDioInterceptor() {
    dio!.interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: false,
        error: true,
        compact: true,
        maxWidth: 90,
      ),
    );
  }
}

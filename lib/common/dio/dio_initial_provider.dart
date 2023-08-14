import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final dioProvider = Provider<Dio>((ref) {
  final dio = Dio(
    BaseOptions(
      baseUrl: ''
    )
  );

  dio.interceptors.add(
      CustomInterceptor()
  );

  return dio;
});

class CustomInterceptor extends Interceptor {
  @override
  Future<void> onRequest(RequestOptions options, RequestInterceptorHandler handler) async {

  }

  @override
  Future<void> onResponse(Response response, ResponseInterceptorHandler handler) async {

  }

  @override
  Future<void> onError(DioException exception, ErrorInterceptorHandler handler) async {

  }

}


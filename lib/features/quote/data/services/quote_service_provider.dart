//https://dailyverses.net/get/verse?language=nvi&isdirect=1&url=%27%20+%20window.location.hostname
import 'package:dio/dio.dart';
import 'package:familiaquotes/features/quote/domain/entities/random_verse_model.dart';

import '../datasources/local.dart';

class QuoteServiceProvider extends Interceptor {
  QuoteServiceProvider() {
    //initializeInterceptors();

    _dio = Dio(
      BaseOptions(
        baseUrl: urlRest,
      ),
    );
  }
  late Dio _dio;

  Future<RandomVerse> getRequest() async {
    try {
      Response response = await _dio.get(urlRest);
      return RandomVerse.fromJson(response.data);

      // final resultList = response.data['book'];

    } on DioError catch (e) {
      print(e.message);
      throw Exception(e.message);
    } catch (e) {
      print(e);
      throw Exception(e);
    }
  }

  // initializeInterceptors() {
  //   _dio.interceptors.add(
  //     InterceptorsWrapper(
  //       onError: (DioError e, handler) {
  //         print(e.message);
  //         return handler.next(e);
  //       },
  //       onRequest: (options, handler) {
  //         print("${options.method} ${options.path}");
  //         return handler.next(options);
  //       },
  //       onResponse: (response, handler) {
  //         print(response.data);
  //         return handler.next(response);
  //       },
  //     ),
  //   );
  // }
}

import 'package:dio/dio.dart';

class Api {
  static Dio api = Dio(
    BaseOptions(baseUrl: "https://api.ai-fit.ru")
  );
}

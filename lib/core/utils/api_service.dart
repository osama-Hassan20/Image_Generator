import 'package:dio/dio.dart';

class ApiService {
  final Dio dio = Dio();

  Future<Response> get({
    required String url,
  }) async {
    var response = await dio.get(
      url,
      options: Options(responseType: ResponseType.bytes),
    );
    return response;
  }
}

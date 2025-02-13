import 'package:dio/dio.dart';

class ApiServices {
  final String baseUrl = 'https://www.googleapis.com/books/v1/';
  final Dio dio;
  ApiServices({
    required this.dio,
  });
  Future<Map<String, dynamic>> getMethod({required String endPoint}) async {
    var response = await dio.get(
      '$baseUrl$endPoint',
    );
    return response.data;
  }
}

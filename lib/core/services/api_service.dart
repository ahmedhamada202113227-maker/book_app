import 'package:dio/dio.dart';

class ApiService {
  final String baseUrl = 'https://api.nytimes.com/svc/books/v3/';
  final String apiBooksBaseUrl = 'https://www.googleapis.com/books/v1/';

  final Dio dio;
  ApiService({required this.dio});

  Future<Map<String, dynamic>> getBooks(String endPoint) async {
    var respone = await dio.get('$baseUrl$endPoint');
    return respone.data;
  }

  Future<Map<String, dynamic>> getApiBooks(String endPoint) async {
    var respone = await dio.get('$apiBooksBaseUrl$endPoint');
    return respone.data;
  }

  Future<Map<String, dynamic>> getApiBooksByCategory(String endPoint) async {
    var respone = await dio.get('$apiBooksBaseUrl$endPoint');
    return respone.data;
  }
}

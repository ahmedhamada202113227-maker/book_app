// ignore: file_names
// ignore_for_file: avoid_print
import 'package:dio/dio.dart';

abstract class Failure {
  final String message;

  Failure(this.message);
}

class ServerFailure extends Failure {
  ServerFailure(super.message);

  factory ServerFailure.fromDioError(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
        print('DioExceptionType: ${e.type}');
        return ServerFailure('Connection Timeout');
      case DioExceptionType.sendTimeout:
        print('DioExceptionType: ${e.type}');
        return ServerFailure('Connection sendTimeout');
      case DioExceptionType.receiveTimeout:
        print('DioExceptionType: ${e.type}');
        return ServerFailure('Connection receiveTimeout');
      case DioExceptionType.badCertificate:
        print('DioExceptionType: ${e.type}');
        return ServerFailure('Connection badCertificate');
      case DioExceptionType.badResponse:
        print('DioExceptionType: ${e.type}');
        return ServerFailure.fromStatusCode(e.response!.statusCode!);
      case DioExceptionType.cancel:
        print('DioExceptionType: ${e.type}');
        return ServerFailure('Connection cancel');
      case DioExceptionType.connectionError:
        print('DioExceptionType: ${e.type}');
        return ServerFailure('No Internet Connection');
      case DioExceptionType.unknown:
        print('DioExceptionType: ${e.type}');
        return ServerFailure('Connection unknown');
    }
  }

  factory ServerFailure.fromStatusCode(int statusCode) {
    if (statusCode == 400 || statusCode == 403) {
      print('Status Code: $statusCode');
      return ServerFailure('Bad Request or Forbidden');
    } else if (statusCode == 401) {
      print('Status Code: $statusCode');
      return ServerFailure('Unauthorized');
    } else if (statusCode == 404) {
      print('Status Code: $statusCode');
      return ServerFailure('Not Found');
    } else if (statusCode == 500) {
      print('Status Code: $statusCode');
      return ServerFailure('Internal Server Error');
    } else if (statusCode == 503) {
      print('Status Code: $statusCode');
      return ServerFailure('Service Unavailable');
    } else {
      print('Status Code: $statusCode');
      return ServerFailure('Unknown Error');
    }
    // switch (statusCode) {
    //   case 400:
    //     return ServerFailure('Bad Request');
    //   case 401:
    //     return ServerFailure('Unauthorized');
    //   case 403:
    //     return ServerFailure('Forbidden');
    //   case 404:
    //     return ServerFailure('Not Found');
    //   case 500:
    //     return ServerFailure('Internal Server Error');
    //   case 503:
    //     return ServerFailure('Service Unavailable');
    //   default:
    //     return ServerFailure('Unknown Error');
    // }
  }
}

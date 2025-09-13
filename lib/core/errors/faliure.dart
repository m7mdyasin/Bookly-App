import 'package:dio/dio.dart';

abstract class Faliure {
  final String errMessage;
  Faliure(this.errMessage);
}

class ServerFaliure extends Faliure {
  ServerFaliure(super.errMessage);
  factory ServerFaliure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFaliure('Conection timeout with api service');
      case DioExceptionType.sendTimeout:
        return ServerFaliure('Send timeout with api service');

      case DioExceptionType.receiveTimeout:
        return ServerFaliure('Receive timeout with api service');

      case DioExceptionType.badCertificate:
        return ServerFaliure('badCertificate');
      case DioExceptionType.badResponse:
        return ServerFaliure.formResponse(
          dioException.response!.statusCode!,
          dioException.response!.data,
        );
      case DioExceptionType.cancel:
        return ServerFaliure('Request with api service was cancel');

      case DioExceptionType.connectionError:
        return ServerFaliure('Internet conecction lost');

      case DioExceptionType.unknown:
        if (dioException.message!.contains('SocketException')) {
          ServerFaliure('No Internet conecction');
        }
        return ServerFaliure('Unexpected Error, please try again');
      default:
        return ServerFaliure('Unexpected Error');
    }
  }
  factory ServerFaliure.formResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401) {
      return ServerFaliure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFaliure('Your request Not found , please try later!');
    } else if (statusCode == 500) {
      return ServerFaliure('Internal server error,please try later');
    } else {
      return ServerFaliure('Opps there was an error');
    }
  }
}

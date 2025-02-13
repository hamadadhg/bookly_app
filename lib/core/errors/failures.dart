import 'package:dio/dio.dart';

abstract class Failures {
  final String errorMessageInFailuresClass;
  Failures({
    required this.errorMessageInFailuresClass,
  });
}

class ServerFailure extends Failures {
  ServerFailure({
    required super.errorMessageInFailuresClass,
  });
  factory ServerFailure.fromDioException({required DioException dioException}) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(
          errorMessageInFailuresClass:
              'The connection takes many duration, so the connection timeout',
        );
      case DioExceptionType.sendTimeout:
        return ServerFailure(
          errorMessageInFailuresClass:
              'The send takes many duration, so the send timeout',
        );
      case DioExceptionType.receiveTimeout:
        return ServerFailure(
          errorMessageInFailuresClass:
              'The receieve takes many duration, so the receieve timeout',
        );
      case DioExceptionType.badCertificate:
        return ServerFailure(
          errorMessageInFailuresClass: 'The certification is bad',
        );
      case DioExceptionType.badResponse:
        return ServerFailure.fromBadResponse(
          statusCode: dioException.response!.statusCode!,
          response: dioException.response!.data,
        );
      case DioExceptionType.cancel:
        return ServerFailure(
          errorMessageInFailuresClass: 'This request is cancel from server',
        );
      case DioExceptionType.connectionError:
        return ServerFailure.fromSocketException(
          dioException: dioException,
        );
      case DioExceptionType.unknown:
        return ServerFailure(
          errorMessageInFailuresClass: 'Unexpected error, please try later',
        );
    }
  }
  factory ServerFailure.fromSocketException(
      {required DioException dioException}) {
    if (dioException.error.toString().contains('SocketException')) {
      return ServerFailure(
        errorMessageInFailuresClass:
            'No internet connection, please check your network',
      );
    } else {
      return ServerFailure(
        errorMessageInFailuresClass:
            'Error because connection, please try again',
      );
    }
  }
  factory ServerFailure.fromBadResponse(
      {required int statusCode, required Map<String, dynamic> response}) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(
        errorMessageInFailuresClass: response['error']['message'],
      );
    } else if (statusCode == 404) {
      return ServerFailure(
        errorMessageInFailuresClass: 'You search on resource not found',
      );
    } else if (statusCode == 500) {
      return ServerFailure(
        errorMessageInFailuresClass: 'Internal server error, please try later',
      );
    } else {
      return ServerFailure(
        errorMessageInFailuresClass: 'Oops there was an error',
      );
    }
  }
}

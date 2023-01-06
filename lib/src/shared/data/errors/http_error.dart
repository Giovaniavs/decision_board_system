import 'package:dio/dio.dart';
import 'package:openredu_mobile_flutter/src/shared/data/errors/default_error_messages.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:stack_trace/stack_trace.dart';

import 'app_error.dart';

abstract class HttpError extends AppError {
  final int code;

  HttpError({
    String slug = '',
    String msg = '',
    String stackTrace = '',
    this.code = -2,
  }) : super(
          slug: slug,
          msg: msg,
          stackTrace: stackTrace.isNotEmpty
              ? stackTrace
              : Chain.current().terse.toString(),
        );
}

class HttpNetworkError extends HttpError {
  HttpNetworkError({
    String slug = '',
    String msg = DefaultErrorMessages.noInternetConnectionError,
    String stackTrace = '',
  }) : super(slug: slug, msg: msg, stackTrace: stackTrace, code: -2);
}

class HttpUnknownError extends HttpError {
  HttpUnknownError({
    String slug = '',
    String msg = '',
    String stackTrace = '',
  }) : super(
          slug: slug,
          msg: msg,
          stackTrace: stackTrace,
          code: -1,
        );
}

class HttpBadRequestError extends HttpError {
  HttpBadRequestError({
    String slug = '',
    String msg = '',
    String stackTrace = '',
  }) : super(
          slug: slug,
          msg: msg,
          stackTrace: stackTrace,
          code: 400,
        );
}

class HttpUnauthorizedError extends HttpError {
  HttpUnauthorizedError({
    String slug = '',
    String msg = '',
    String stackTrace = '',
  }) : super(
          slug: slug,
          msg: msg,
          stackTrace: stackTrace,
          code: 401,
        );
}

class HttpNotFoundError extends HttpError {
  HttpNotFoundError({
    String slug = '',
    String msg = '',
    String stackTrace = '',
  }) : super(
          slug: slug,
          msg: msg,
          stackTrace: stackTrace,
          code: 404,
        );
}

class HttpGoneError extends HttpError {
  HttpGoneError({
    String slug = '',
    String msg = '',
    String stackTrace = '',
  }) : super(
          slug: slug,
          msg: msg,
          stackTrace: stackTrace,
          code: 410,
        );
}

class UnprocessableEntityError extends HttpError {
  UnprocessableEntityError({
    String slug = '',
    String msg = '',
    String stackTrace = '',
  }) : super(
          slug: slug,
          msg: msg,
          stackTrace: stackTrace,
          code: 422,
        );

  @override
  String toString() => '''[UnprocessableEntityError]: {
            slug: $slug,
            msg: $msg,
            stackTrace: $stackTrace,
        }''';
}

class HttpInternalServerError extends HttpError {
  HttpInternalServerError({
    String slug = '',
    String msg = '',
    String stackTrace = '',
  }) : super(
          slug: slug,
          msg: msg,
          stackTrace: stackTrace,
          code: 500,
        );

  @override
  String toString() => '''[HttpInternalServerError]: {
            slug: $slug,
            msg: $msg,
            stackTrace: $stackTrace,
        }''';
}

HttpError parseHttpError(DioError error) {
  Sentry.captureException(
    error.error,
    stackTrace: error.stackTrace,
    hint: error.message,
  );

  String msg = DefaultErrorMessages.unknownError;
  String slug = '';

  if (error.response != null) {
    if (error.response?.data != null &&
        error.response?.data is Map &&
        (error.response?.data as Map).containsKey('errors') &&
        (error.response?.data["errors"][0] as Map).containsKey('message')) {
      msg = error.response?.data["errors"][0]['message'];

      if (error.response?.data["errors"][0]['detail'] != null) {
        slug = error.response?.data["errors"][0]['detail'];
      }
    } else {
      slug = error.response.toString();
    }
  }

  if (error.type == DioErrorType.response) {
    switch (error.response?.statusCode) {
      case 400:
        return HttpBadRequestError(
          slug: slug,
          msg: msg,
        );
      case 401:
        return HttpUnauthorizedError(
          slug: slug,
          msg: msg,
        );
      case 404:
        return HttpNotFoundError(
          slug: slug,
          msg: msg,
        );
      case 410:
        return HttpGoneError(
          slug: slug,
          msg: msg,
        );
      case 422:
        return UnprocessableEntityError(
          slug: slug,
          msg: msg,
        );
      case 500:
        return HttpInternalServerError(
          slug: slug,
          msg: msg,
        );
      default:
        return HttpUnknownError(
          slug: slug,
          msg: msg,
        );
    }
  } else if (error.type == DioErrorType.connectTimeout ||
      error.type == DioErrorType.receiveTimeout ||
      error.type == DioErrorType.sendTimeout) {
    return HttpNetworkError(
      slug: slug,
      msg: msg,
    );
  } else {
    return HttpUnknownError(
      slug: slug,
      msg: msg,
    );
  }
}

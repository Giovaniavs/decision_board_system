import 'package:openredu_mobile_flutter/src/shared/data/errors/default_error_messages.dart';
import 'package:stack_trace/stack_trace.dart';

import 'app_error.dart';

abstract class DeviceInfoError extends AppError {
  DeviceInfoError({
    String slug = '',
    String msg = DefaultErrorMessages.unknownError,
    String stackTrace = '',
  }) : super(
          slug: slug,
          msg: msg,
          stackTrace: stackTrace.isNotEmpty
              ? stackTrace
              : Chain.current().terse.toString(),
        );
}

class DeviceInfoUnknownError extends DeviceInfoError {
  DeviceInfoUnknownError({
    String slug = '',
    String msg = '',
    String stackTrace = '',
  }) : super(
          slug: slug,
          msg: msg,
          stackTrace: stackTrace,
        );
}

class DeviceInfoNotFoundError extends DeviceInfoError {
  DeviceInfoNotFoundError({
    String slug = '',
    String msg = '',
    String stackTrace = '',
  }) : super(
          slug: slug,
          msg: msg,
          stackTrace: stackTrace,
        );
}

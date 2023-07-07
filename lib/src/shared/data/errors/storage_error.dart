import 'package:decision_board_system/src/shared/data/errors/default_error_messages.dart';
import 'package:stack_trace/stack_trace.dart';

import 'app_error.dart';

abstract class StorageError extends AppError {
  StorageError({
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

class StorageUnknownError extends StorageError {
  StorageUnknownError({
    String slug = '',
    String msg = '',
    String stackTrace = '',
  }) : super(
          slug: slug,
          msg: msg,
          stackTrace: stackTrace,
        );
}

class StorageNotFoundError extends StorageError {
  StorageNotFoundError({
    String slug = '',
    String msg = '',
    String stackTrace = '',
  }) : super(
          slug: slug,
          msg: msg,
          stackTrace: stackTrace,
        );
}

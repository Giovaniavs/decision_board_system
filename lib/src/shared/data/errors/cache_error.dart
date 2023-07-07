import 'package:decision_board_system/src/shared/data/errors/app_error.dart';
import 'package:decision_board_system/src/shared/data/errors/default_error_messages.dart';
import 'package:stack_trace/stack_trace.dart';

abstract class CacheError extends AppError {
  CacheError({
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

class FailedToCacheError extends CacheError {
  FailedToCacheError({
    String slug = '',
    String msg = '',
    String stackTrace = '',
  }) : super(
          slug: slug,
          msg: msg,
          stackTrace: stackTrace,
        );
}

class FileAlreadyCachedError extends CacheError {
  FileAlreadyCachedError({
    String slug = '',
    String msg = '',
    String stackTrace = '',
  }) : super(
          slug: slug,
          msg: msg,
          stackTrace: stackTrace,
        );
}

class NotCachedError extends CacheError {
  NotCachedError({
    String slug = '',
    String msg = '',
    String stackTrace = '',
  }) : super(
          slug: slug,
          msg: msg,
          stackTrace: stackTrace,
        );
}

class FailedToUnloadError extends CacheError {
  FailedToUnloadError({
    String slug = '',
    String msg = '',
    String stackTrace = '',
  }) : super(
          slug: slug,
          msg: msg,
          stackTrace: stackTrace,
        );
}

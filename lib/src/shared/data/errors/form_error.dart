import 'package:decision_board_system/src/shared/data/errors/default_error_messages.dart';
import 'package:stack_trace/stack_trace.dart';

import 'app_error.dart';

class FormError extends AppError {
  FormError({
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

  @override
  String toString() => '''[FormError]: {
          slug: $slug,
          msg: $msg,
          stackTrace: $stackTrace,
        }''';
}

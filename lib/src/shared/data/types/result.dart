import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:decision_board_system/src/shared/data/errors/app_error.dart';

part 'result.freezed.dart';

@freezed
class Result<ResultType> with _$Result<ResultType> {
  const Result._();
  const factory Result.success(ResultType data) = Success<ResultType>;
  const factory Result.failure(AppError error) = Failure;

  bool get isSuccess => this is Success;
  bool get isFailure => this is Failure;

  Success<ResultType> get asSuccess => this as Success<ResultType>;
  Failure<AppError> get asFailure => this as Failure<AppError>;

  T handle<T>({
    required T Function(ResultType data) onSuccess,
    required T Function(AppError error) onFailure,
  }) {
    return map<T>(
      success: (success) => onSuccess(success.data),
      failure: (failure) => onFailure(failure.error),
    );
  }
}

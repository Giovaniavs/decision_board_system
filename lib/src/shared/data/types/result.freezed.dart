// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Result<ResultType> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ResultType data) success,
    required TResult Function(AppError error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ResultType data)? success,
    TResult? Function(AppError error)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ResultType data)? success,
    TResult Function(AppError error)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Success<ResultType> value) success,
    required TResult Function(Failure<ResultType> value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Success<ResultType> value)? success,
    TResult? Function(Failure<ResultType> value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Success<ResultType> value)? success,
    TResult Function(Failure<ResultType> value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<ResultType, $Res> {
  factory $ResultCopyWith(
          Result<ResultType> value, $Res Function(Result<ResultType>) then) =
      _$ResultCopyWithImpl<ResultType, $Res, Result<ResultType>>;
}

/// @nodoc
class _$ResultCopyWithImpl<ResultType, $Res, $Val extends Result<ResultType>>
    implements $ResultCopyWith<ResultType, $Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SuccessCopyWith<ResultType, $Res> {
  factory _$$SuccessCopyWith(_$Success<ResultType> value,
          $Res Function(_$Success<ResultType>) then) =
      __$$SuccessCopyWithImpl<ResultType, $Res>;
  @useResult
  $Res call({ResultType data});
}

/// @nodoc
class __$$SuccessCopyWithImpl<ResultType, $Res>
    extends _$ResultCopyWithImpl<ResultType, $Res, _$Success<ResultType>>
    implements _$$SuccessCopyWith<ResultType, $Res> {
  __$$SuccessCopyWithImpl(
      _$Success<ResultType> _value, $Res Function(_$Success<ResultType>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$Success<ResultType>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ResultType,
    ));
  }
}

/// @nodoc

class _$Success<ResultType> extends Success<ResultType> {
  const _$Success(this.data) : super._();

  @override
  final ResultType data;

  @override
  String toString() {
    return 'Result<$ResultType>.success(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Success<ResultType> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessCopyWith<ResultType, _$Success<ResultType>> get copyWith =>
      __$$SuccessCopyWithImpl<ResultType, _$Success<ResultType>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ResultType data) success,
    required TResult Function(AppError error) failure,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ResultType data)? success,
    TResult? Function(AppError error)? failure,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ResultType data)? success,
    TResult Function(AppError error)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Success<ResultType> value) success,
    required TResult Function(Failure<ResultType> value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Success<ResultType> value)? success,
    TResult? Function(Failure<ResultType> value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Success<ResultType> value)? success,
    TResult Function(Failure<ResultType> value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success<ResultType> extends Result<ResultType> {
  const factory Success(final ResultType data) = _$Success<ResultType>;
  const Success._() : super._();

  ResultType get data;
  @JsonKey(ignore: true)
  _$$SuccessCopyWith<ResultType, _$Success<ResultType>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureCopyWith<ResultType, $Res> {
  factory _$$FailureCopyWith(_$Failure<ResultType> value,
          $Res Function(_$Failure<ResultType>) then) =
      __$$FailureCopyWithImpl<ResultType, $Res>;
  @useResult
  $Res call({AppError error});
}

/// @nodoc
class __$$FailureCopyWithImpl<ResultType, $Res>
    extends _$ResultCopyWithImpl<ResultType, $Res, _$Failure<ResultType>>
    implements _$$FailureCopyWith<ResultType, $Res> {
  __$$FailureCopyWithImpl(
      _$Failure<ResultType> _value, $Res Function(_$Failure<ResultType>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$Failure<ResultType>(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as AppError,
    ));
  }
}

/// @nodoc

class _$Failure<ResultType> extends Failure<ResultType> {
  const _$Failure(this.error) : super._();

  @override
  final AppError error;

  @override
  String toString() {
    return 'Result<$ResultType>.failure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Failure<ResultType> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureCopyWith<ResultType, _$Failure<ResultType>> get copyWith =>
      __$$FailureCopyWithImpl<ResultType, _$Failure<ResultType>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ResultType data) success,
    required TResult Function(AppError error) failure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ResultType data)? success,
    TResult? Function(AppError error)? failure,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ResultType data)? success,
    TResult Function(AppError error)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Success<ResultType> value) success,
    required TResult Function(Failure<ResultType> value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Success<ResultType> value)? success,
    TResult? Function(Failure<ResultType> value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Success<ResultType> value)? success,
    TResult Function(Failure<ResultType> value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class Failure<ResultType> extends Result<ResultType> {
  const factory Failure(final AppError error) = _$Failure<ResultType>;
  const Failure._() : super._();

  AppError get error;
  @JsonKey(ignore: true)
  _$$FailureCopyWith<ResultType, _$Failure<ResultType>> get copyWith =>
      throw _privateConstructorUsedError;
}

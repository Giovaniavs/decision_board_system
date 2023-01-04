// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_credentials_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserCredentialsModel {
  String? get userId => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get fullName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserCredentialsModelCopyWith<UserCredentialsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCredentialsModelCopyWith<$Res> {
  factory $UserCredentialsModelCopyWith(UserCredentialsModel value,
          $Res Function(UserCredentialsModel) then) =
      _$UserCredentialsModelCopyWithImpl<$Res, UserCredentialsModel>;
  @useResult
  $Res call({String? userId, String? email, String? fullName});
}

/// @nodoc
class _$UserCredentialsModelCopyWithImpl<$Res,
        $Val extends UserCredentialsModel>
    implements $UserCredentialsModelCopyWith<$Res> {
  _$UserCredentialsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? email = freezed,
    Object? fullName = freezed,
  }) {
    return _then(_value.copyWith(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserCredentialsModelCopyWith<$Res>
    implements $UserCredentialsModelCopyWith<$Res> {
  factory _$$_UserCredentialsModelCopyWith(_$_UserCredentialsModel value,
          $Res Function(_$_UserCredentialsModel) then) =
      __$$_UserCredentialsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? userId, String? email, String? fullName});
}

/// @nodoc
class __$$_UserCredentialsModelCopyWithImpl<$Res>
    extends _$UserCredentialsModelCopyWithImpl<$Res, _$_UserCredentialsModel>
    implements _$$_UserCredentialsModelCopyWith<$Res> {
  __$$_UserCredentialsModelCopyWithImpl(_$_UserCredentialsModel _value,
      $Res Function(_$_UserCredentialsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? email = freezed,
    Object? fullName = freezed,
  }) {
    return _then(_$_UserCredentialsModel(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_UserCredentialsModel extends _UserCredentialsModel {
  const _$_UserCredentialsModel({this.userId, this.email, this.fullName})
      : super._();

  @override
  final String? userId;
  @override
  final String? email;
  @override
  final String? fullName;

  @override
  String toString() {
    return 'UserCredentialsModel(userId: $userId, email: $email, fullName: $fullName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserCredentialsModel &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, email, fullName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserCredentialsModelCopyWith<_$_UserCredentialsModel> get copyWith =>
      __$$_UserCredentialsModelCopyWithImpl<_$_UserCredentialsModel>(
          this, _$identity);
}

abstract class _UserCredentialsModel extends UserCredentialsModel {
  const factory _UserCredentialsModel(
      {final String? userId,
      final String? email,
      final String? fullName}) = _$_UserCredentialsModel;
  const _UserCredentialsModel._() : super._();

  @override
  String? get userId;
  @override
  String? get email;
  @override
  String? get fullName;
  @override
  @JsonKey(ignore: true)
  _$$_UserCredentialsModelCopyWith<_$_UserCredentialsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

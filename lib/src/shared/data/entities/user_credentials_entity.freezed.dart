// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_credentials_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserCredentialsEntity _$UserCredentialsEntityFromJson(
    Map<String, dynamic> json) {
  return _UserCredentialsEntity.fromJson(json);
}

/// @nodoc
mixin _$UserCredentialsEntity {
  String? get userId => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get fullName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCredentialsEntityCopyWith<UserCredentialsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCredentialsEntityCopyWith<$Res> {
  factory $UserCredentialsEntityCopyWith(UserCredentialsEntity value,
          $Res Function(UserCredentialsEntity) then) =
      _$UserCredentialsEntityCopyWithImpl<$Res, UserCredentialsEntity>;
  @useResult
  $Res call({String? userId, String? email, String? fullName});
}

/// @nodoc
class _$UserCredentialsEntityCopyWithImpl<$Res,
        $Val extends UserCredentialsEntity>
    implements $UserCredentialsEntityCopyWith<$Res> {
  _$UserCredentialsEntityCopyWithImpl(this._value, this._then);

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
abstract class _$$_UserCredentialsEntityCopyWith<$Res>
    implements $UserCredentialsEntityCopyWith<$Res> {
  factory _$$_UserCredentialsEntityCopyWith(_$_UserCredentialsEntity value,
          $Res Function(_$_UserCredentialsEntity) then) =
      __$$_UserCredentialsEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? userId, String? email, String? fullName});
}

/// @nodoc
class __$$_UserCredentialsEntityCopyWithImpl<$Res>
    extends _$UserCredentialsEntityCopyWithImpl<$Res, _$_UserCredentialsEntity>
    implements _$$_UserCredentialsEntityCopyWith<$Res> {
  __$$_UserCredentialsEntityCopyWithImpl(_$_UserCredentialsEntity _value,
      $Res Function(_$_UserCredentialsEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? email = freezed,
    Object? fullName = freezed,
  }) {
    return _then(_$_UserCredentialsEntity(
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
@JsonSerializable()
class _$_UserCredentialsEntity extends _UserCredentialsEntity {
  const _$_UserCredentialsEntity({this.userId, this.email, this.fullName})
      : super._();

  factory _$_UserCredentialsEntity.fromJson(Map<String, dynamic> json) =>
      _$$_UserCredentialsEntityFromJson(json);

  @override
  final String? userId;
  @override
  final String? email;
  @override
  final String? fullName;

  @override
  String toString() {
    return 'UserCredentialsEntity(userId: $userId, email: $email, fullName: $fullName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserCredentialsEntity &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId, email, fullName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserCredentialsEntityCopyWith<_$_UserCredentialsEntity> get copyWith =>
      __$$_UserCredentialsEntityCopyWithImpl<_$_UserCredentialsEntity>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserCredentialsEntityToJson(
      this,
    );
  }
}

abstract class _UserCredentialsEntity extends UserCredentialsEntity {
  const factory _UserCredentialsEntity(
      {final String? userId,
      final String? email,
      final String? fullName}) = _$_UserCredentialsEntity;
  const _UserCredentialsEntity._() : super._();

  factory _UserCredentialsEntity.fromJson(Map<String, dynamic> json) =
      _$_UserCredentialsEntity.fromJson;

  @override
  String? get userId;
  @override
  String? get email;
  @override
  String? get fullName;
  @override
  @JsonKey(ignore: true)
  _$$_UserCredentialsEntityCopyWith<_$_UserCredentialsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'token_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TokenEntity _$TokenEntityFromJson(Map<String, dynamic> json) {
  return _TokenEntity.fromJson(json);
}

/// @nodoc
mixin _$TokenEntity {
  String? get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TokenEntityCopyWith<TokenEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenEntityCopyWith<$Res> {
  factory $TokenEntityCopyWith(
          TokenEntity value, $Res Function(TokenEntity) then) =
      _$TokenEntityCopyWithImpl<$Res, TokenEntity>;
  @useResult
  $Res call({String? token});
}

/// @nodoc
class _$TokenEntityCopyWithImpl<$Res, $Val extends TokenEntity>
    implements $TokenEntityCopyWith<$Res> {
  _$TokenEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TokenEntityCopyWith<$Res>
    implements $TokenEntityCopyWith<$Res> {
  factory _$$_TokenEntityCopyWith(
          _$_TokenEntity value, $Res Function(_$_TokenEntity) then) =
      __$$_TokenEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? token});
}

/// @nodoc
class __$$_TokenEntityCopyWithImpl<$Res>
    extends _$TokenEntityCopyWithImpl<$Res, _$_TokenEntity>
    implements _$$_TokenEntityCopyWith<$Res> {
  __$$_TokenEntityCopyWithImpl(
      _$_TokenEntity _value, $Res Function(_$_TokenEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = freezed,
  }) {
    return _then(_$_TokenEntity(
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TokenEntity implements _TokenEntity {
  const _$_TokenEntity({required this.token});

  factory _$_TokenEntity.fromJson(Map<String, dynamic> json) =>
      _$$_TokenEntityFromJson(json);

  @override
  final String? token;

  @override
  String toString() {
    return 'TokenEntity(token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TokenEntity &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TokenEntityCopyWith<_$_TokenEntity> get copyWith =>
      __$$_TokenEntityCopyWithImpl<_$_TokenEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TokenEntityToJson(
      this,
    );
  }
}

abstract class _TokenEntity implements TokenEntity {
  const factory _TokenEntity({required final String? token}) = _$_TokenEntity;

  factory _TokenEntity.fromJson(Map<String, dynamic> json) =
      _$_TokenEntity.fromJson;

  @override
  String? get token;
  @override
  @JsonKey(ignore: true)
  _$$_TokenEntityCopyWith<_$_TokenEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

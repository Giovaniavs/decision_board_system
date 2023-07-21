// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'complaint_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ComplaintEntity _$ComplaintEntityFromJson(Map<String, dynamic> json) {
  return _ComplaintEntity.fromJson(json);
}

/// @nodoc
mixin _$ComplaintEntity {
  String? get complaintId => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get dateTime => throw _privateConstructorUsedError;
  String? get localization => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ComplaintEntityCopyWith<ComplaintEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComplaintEntityCopyWith<$Res> {
  factory $ComplaintEntityCopyWith(
          ComplaintEntity value, $Res Function(ComplaintEntity) then) =
      _$ComplaintEntityCopyWithImpl<$Res, ComplaintEntity>;
  @useResult
  $Res call(
      {String? complaintId,
      String? title,
      String? dateTime,
      String? localization,
      String? status,
      String? text});
}

/// @nodoc
class _$ComplaintEntityCopyWithImpl<$Res, $Val extends ComplaintEntity>
    implements $ComplaintEntityCopyWith<$Res> {
  _$ComplaintEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? complaintId = freezed,
    Object? title = freezed,
    Object? dateTime = freezed,
    Object? localization = freezed,
    Object? status = freezed,
    Object? text = freezed,
  }) {
    return _then(_value.copyWith(
      complaintId: freezed == complaintId
          ? _value.complaintId
          : complaintId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      dateTime: freezed == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as String?,
      localization: freezed == localization
          ? _value.localization
          : localization // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ComplaintEntityCopyWith<$Res>
    implements $ComplaintEntityCopyWith<$Res> {
  factory _$$_ComplaintEntityCopyWith(
          _$_ComplaintEntity value, $Res Function(_$_ComplaintEntity) then) =
      __$$_ComplaintEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? complaintId,
      String? title,
      String? dateTime,
      String? localization,
      String? status,
      String? text});
}

/// @nodoc
class __$$_ComplaintEntityCopyWithImpl<$Res>
    extends _$ComplaintEntityCopyWithImpl<$Res, _$_ComplaintEntity>
    implements _$$_ComplaintEntityCopyWith<$Res> {
  __$$_ComplaintEntityCopyWithImpl(
      _$_ComplaintEntity _value, $Res Function(_$_ComplaintEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? complaintId = freezed,
    Object? title = freezed,
    Object? dateTime = freezed,
    Object? localization = freezed,
    Object? status = freezed,
    Object? text = freezed,
  }) {
    return _then(_$_ComplaintEntity(
      complaintId: freezed == complaintId
          ? _value.complaintId
          : complaintId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      dateTime: freezed == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as String?,
      localization: freezed == localization
          ? _value.localization
          : localization // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ComplaintEntity extends _ComplaintEntity {
  const _$_ComplaintEntity(
      {this.complaintId,
      this.title,
      this.dateTime,
      this.localization,
      this.status,
      this.text})
      : super._();

  factory _$_ComplaintEntity.fromJson(Map<String, dynamic> json) =>
      _$$_ComplaintEntityFromJson(json);

  @override
  final String? complaintId;
  @override
  final String? title;
  @override
  final String? dateTime;
  @override
  final String? localization;
  @override
  final String? status;
  @override
  final String? text;

  @override
  String toString() {
    return 'ComplaintEntity(complaintId: $complaintId, title: $title, dateTime: $dateTime, localization: $localization, status: $status, text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ComplaintEntity &&
            (identical(other.complaintId, complaintId) ||
                other.complaintId == complaintId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            (identical(other.localization, localization) ||
                other.localization == localization) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, complaintId, title, dateTime, localization, status, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ComplaintEntityCopyWith<_$_ComplaintEntity> get copyWith =>
      __$$_ComplaintEntityCopyWithImpl<_$_ComplaintEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ComplaintEntityToJson(
      this,
    );
  }
}

abstract class _ComplaintEntity extends ComplaintEntity {
  const factory _ComplaintEntity(
      {final String? complaintId,
      final String? title,
      final String? dateTime,
      final String? localization,
      final String? status,
      final String? text}) = _$_ComplaintEntity;
  const _ComplaintEntity._() : super._();

  factory _ComplaintEntity.fromJson(Map<String, dynamic> json) =
      _$_ComplaintEntity.fromJson;

  @override
  String? get complaintId;
  @override
  String? get title;
  @override
  String? get dateTime;
  @override
  String? get localization;
  @override
  String? get status;
  @override
  String? get text;
  @override
  @JsonKey(ignore: true)
  _$$_ComplaintEntityCopyWith<_$_ComplaintEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

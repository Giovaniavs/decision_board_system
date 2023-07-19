// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'complaint_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ComplaintModel {
  String get complaintId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get dateTime => throw _privateConstructorUsedError;
  String get localization => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ComplaintModelCopyWith<ComplaintModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComplaintModelCopyWith<$Res> {
  factory $ComplaintModelCopyWith(
          ComplaintModel value, $Res Function(ComplaintModel) then) =
      _$ComplaintModelCopyWithImpl<$Res, ComplaintModel>;
  @useResult
  $Res call(
      {String complaintId,
      String title,
      String dateTime,
      String localization,
      String status,
      String text});
}

/// @nodoc
class _$ComplaintModelCopyWithImpl<$Res, $Val extends ComplaintModel>
    implements $ComplaintModelCopyWith<$Res> {
  _$ComplaintModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? complaintId = null,
    Object? title = null,
    Object? dateTime = null,
    Object? localization = null,
    Object? status = null,
    Object? text = null,
  }) {
    return _then(_value.copyWith(
      complaintId: null == complaintId
          ? _value.complaintId
          : complaintId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as String,
      localization: null == localization
          ? _value.localization
          : localization // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ComplaintModelCopyWith<$Res>
    implements $ComplaintModelCopyWith<$Res> {
  factory _$$_ComplaintModelCopyWith(
          _$_ComplaintModel value, $Res Function(_$_ComplaintModel) then) =
      __$$_ComplaintModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String complaintId,
      String title,
      String dateTime,
      String localization,
      String status,
      String text});
}

/// @nodoc
class __$$_ComplaintModelCopyWithImpl<$Res>
    extends _$ComplaintModelCopyWithImpl<$Res, _$_ComplaintModel>
    implements _$$_ComplaintModelCopyWith<$Res> {
  __$$_ComplaintModelCopyWithImpl(
      _$_ComplaintModel _value, $Res Function(_$_ComplaintModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? complaintId = null,
    Object? title = null,
    Object? dateTime = null,
    Object? localization = null,
    Object? status = null,
    Object? text = null,
  }) {
    return _then(_$_ComplaintModel(
      complaintId: null == complaintId
          ? _value.complaintId
          : complaintId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as String,
      localization: null == localization
          ? _value.localization
          : localization // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ComplaintModel extends _ComplaintModel {
  const _$_ComplaintModel(
      {required this.complaintId,
      required this.title,
      required this.dateTime,
      required this.localization,
      required this.status,
      required this.text})
      : super._();

  @override
  final String complaintId;
  @override
  final String title;
  @override
  final String dateTime;
  @override
  final String localization;
  @override
  final String status;
  @override
  final String text;

  @override
  String toString() {
    return 'ComplaintModel(complaintId: $complaintId, title: $title, dateTime: $dateTime, localization: $localization, status: $status, text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ComplaintModel &&
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

  @override
  int get hashCode => Object.hash(
      runtimeType, complaintId, title, dateTime, localization, status, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ComplaintModelCopyWith<_$_ComplaintModel> get copyWith =>
      __$$_ComplaintModelCopyWithImpl<_$_ComplaintModel>(this, _$identity);
}

abstract class _ComplaintModel extends ComplaintModel {
  const factory _ComplaintModel(
      {required final String complaintId,
      required final String title,
      required final String dateTime,
      required final String localization,
      required final String status,
      required final String text}) = _$_ComplaintModel;
  const _ComplaintModel._() : super._();

  @override
  String get complaintId;
  @override
  String get title;
  @override
  String get dateTime;
  @override
  String get localization;
  @override
  String get status;
  @override
  String get text;
  @override
  @JsonKey(ignore: true)
  _$$_ComplaintModelCopyWith<_$_ComplaintModel> get copyWith =>
      throw _privateConstructorUsedError;
}

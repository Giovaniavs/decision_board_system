// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'local_data_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LocalDataEntity _$LocalDataEntityFromJson(Map<String, dynamic> json) {
  return _LocalDataEntity.fromJson(json);
}

/// @nodoc
mixin _$LocalDataEntity {
  List<ComplaintEntity>? get complaintList =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocalDataEntityCopyWith<LocalDataEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalDataEntityCopyWith<$Res> {
  factory $LocalDataEntityCopyWith(
          LocalDataEntity value, $Res Function(LocalDataEntity) then) =
      _$LocalDataEntityCopyWithImpl<$Res, LocalDataEntity>;
  @useResult
  $Res call({List<ComplaintEntity>? complaintList});
}

/// @nodoc
class _$LocalDataEntityCopyWithImpl<$Res, $Val extends LocalDataEntity>
    implements $LocalDataEntityCopyWith<$Res> {
  _$LocalDataEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? complaintList = freezed,
  }) {
    return _then(_value.copyWith(
      complaintList: freezed == complaintList
          ? _value.complaintList
          : complaintList // ignore: cast_nullable_to_non_nullable
              as List<ComplaintEntity>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LocalDataEntityCopyWith<$Res>
    implements $LocalDataEntityCopyWith<$Res> {
  factory _$$_LocalDataEntityCopyWith(
          _$_LocalDataEntity value, $Res Function(_$_LocalDataEntity) then) =
      __$$_LocalDataEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ComplaintEntity>? complaintList});
}

/// @nodoc
class __$$_LocalDataEntityCopyWithImpl<$Res>
    extends _$LocalDataEntityCopyWithImpl<$Res, _$_LocalDataEntity>
    implements _$$_LocalDataEntityCopyWith<$Res> {
  __$$_LocalDataEntityCopyWithImpl(
      _$_LocalDataEntity _value, $Res Function(_$_LocalDataEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? complaintList = freezed,
  }) {
    return _then(_$_LocalDataEntity(
      complaintList: freezed == complaintList
          ? _value._complaintList
          : complaintList // ignore: cast_nullable_to_non_nullable
              as List<ComplaintEntity>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LocalDataEntity extends _LocalDataEntity {
  const _$_LocalDataEntity({final List<ComplaintEntity>? complaintList})
      : _complaintList = complaintList,
        super._();

  factory _$_LocalDataEntity.fromJson(Map<String, dynamic> json) =>
      _$$_LocalDataEntityFromJson(json);

  final List<ComplaintEntity>? _complaintList;
  @override
  List<ComplaintEntity>? get complaintList {
    final value = _complaintList;
    if (value == null) return null;
    if (_complaintList is EqualUnmodifiableListView) return _complaintList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'LocalDataEntity(complaintList: $complaintList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocalDataEntity &&
            const DeepCollectionEquality()
                .equals(other._complaintList, _complaintList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_complaintList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LocalDataEntityCopyWith<_$_LocalDataEntity> get copyWith =>
      __$$_LocalDataEntityCopyWithImpl<_$_LocalDataEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocalDataEntityToJson(
      this,
    );
  }
}

abstract class _LocalDataEntity extends LocalDataEntity {
  const factory _LocalDataEntity({final List<ComplaintEntity>? complaintList}) =
      _$_LocalDataEntity;
  const _LocalDataEntity._() : super._();

  factory _LocalDataEntity.fromJson(Map<String, dynamic> json) =
      _$_LocalDataEntity.fromJson;

  @override
  List<ComplaintEntity>? get complaintList;
  @override
  @JsonKey(ignore: true)
  _$$_LocalDataEntityCopyWith<_$_LocalDataEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

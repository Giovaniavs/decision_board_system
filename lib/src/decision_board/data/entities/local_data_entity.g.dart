// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_data_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LocalDataEntity _$$_LocalDataEntityFromJson(Map<String, dynamic> json) =>
    _$_LocalDataEntity(
      complaintList: (json['complaintList'] as List<dynamic>?)
          ?.map((e) => ComplaintEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_LocalDataEntityToJson(_$_LocalDataEntity instance) =>
    <String, dynamic>{
      'complaintList': instance.complaintList,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'complaint_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ComplaintEntity _$$_ComplaintEntityFromJson(Map<String, dynamic> json) =>
    _$_ComplaintEntity(
      complaintId: json['complaintId'] as String?,
      title: json['title'] as String?,
      dateTime: json['dateTime'] as String?,
      localization: json['localization'] as String?,
      status: json['status'] as String?,
      text: json['text'] as String?,
    );

Map<String, dynamic> _$$_ComplaintEntityToJson(_$_ComplaintEntity instance) =>
    <String, dynamic>{
      'complaintId': instance.complaintId,
      'title': instance.title,
      'dateTime': instance.dateTime,
      'localization': instance.localization,
      'status': instance.status,
      'text': instance.text,
    };

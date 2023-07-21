import 'package:decision_board_system/src/shared/data/models/complaint_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'complaint_entity.freezed.dart';
part 'complaint_entity.g.dart';

@freezed
class ComplaintEntity with _$ComplaintEntity {
  const ComplaintEntity._();
  const factory ComplaintEntity({
    String? complaintId,
    String? title,
    String? dateTime,
    String? localization,
    String? status,
    String? text,
  }) = _ComplaintEntity;

  factory ComplaintEntity.fromJson(Map<String, dynamic> json) =>
      _$ComplaintEntityFromJson(json);

  ComplaintModel toDomain() {
    return ComplaintModel(
      complaintId: complaintId ?? '',
      title: title ?? '',
      dateTime: dateTime ?? '',
      localization: localization ?? '',
      status: status ?? '',
      text: text ?? '',
    );
  }

  factory ComplaintEntity.fromDomain(ComplaintModel model) {
    return ComplaintEntity(
      complaintId: model.complaintId,
      title: model.title,
      dateTime: model.dateTime,
      localization: model.localization,
      status: model.status,
      text: model.text,
    );
  }
}

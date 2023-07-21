import 'package:decision_board_system/src/decision_board/data/entities/complaint_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'local_data_entity.freezed.dart';
part 'local_data_entity.g.dart';

@freezed
class LocalDataEntity with _$LocalDataEntity {
  const LocalDataEntity._();
  const factory LocalDataEntity({
    List<ComplaintEntity>? complaintList,
  }) = _LocalDataEntity;

  factory LocalDataEntity.fromJson(Map<String, dynamic> json) =>
      _$LocalDataEntityFromJson(json);
}

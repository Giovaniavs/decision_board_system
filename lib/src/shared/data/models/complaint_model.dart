import 'package:freezed_annotation/freezed_annotation.dart';

part 'complaint_model.freezed.dart';

@freezed
class ComplaintModel with _$ComplaintModel {
  const ComplaintModel._();
  const factory ComplaintModel({
    required String complaintId,
    required String title,
    required String dateTime,
    required String localization,
    required String status,
    required String text,
  }) = _ComplaintModel;
}

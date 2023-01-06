import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:openredu_mobile_flutter/src/shared/data/types/maybe.dart';

part 'form_field.freezed.dart';

@freezed
class FormField<T> with _$FormField<T> {
  const factory FormField({
    required String name,
    @Default(Nothing()) Maybe<T> field,
  }) = _FormField<T>;
}

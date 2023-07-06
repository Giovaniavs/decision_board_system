import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:openredu_mobile_flutter/src/auth/sign_in/domain/models/sign_in_model.dart';
import 'package:openredu_mobile_flutter/src/shared/data/errors/exceptions.dart';

part 'sign_in_entity.freezed.dart';
part 'sign_in_entity.g.dart';

@freezed
class SignInEntity with _$SignInEntity {
  const SignInEntity._();
  const factory SignInEntity({
    String? data,
    String? token,
  }) = _SignInEntity;

  factory SignInEntity.fromJson(Map<String, dynamic> json) =>
      _$SignInEntityFromJson(json);

  SignInModel toDomain() {
    try {
      return const SignInModel(
        email: '',
        password: '',
        token: '',
        userId: '',
      );
    } catch (e) {
      throw ParseException(e.toString());
    }
  }
}

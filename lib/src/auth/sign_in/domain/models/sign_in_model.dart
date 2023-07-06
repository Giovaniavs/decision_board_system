import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_model.freezed.dart';

@freezed
class SignInModel with _$SignInModel {
  const factory SignInModel({
    required String userId,
    required String email,
    required String password,
    required String token,
  }) = _SignInModel;
}

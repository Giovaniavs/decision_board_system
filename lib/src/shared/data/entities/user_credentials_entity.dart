import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:decision_board_system/src/shared/data/errors/app_error.dart';
import 'package:decision_board_system/src/shared/data/models/user_credentials_model.dart';

part 'user_credentials_entity.freezed.dart';
part 'user_credentials_entity.g.dart';

@freezed
class UserCredentialsEntity with _$UserCredentialsEntity {
  const UserCredentialsEntity._();
  const factory UserCredentialsEntity({
    String? userId,
    String? email,
    String? fullName,
  }) = _UserCredentialsEntity;

  factory UserCredentialsEntity.fromJson(Map<String, dynamic> json) =>
      _$UserCredentialsEntityFromJson(json);

  UserCredentialsModel toDomain() {
    try {
      return UserCredentialsModel(
        userId: userId,
        email: email,
        fullName: fullName,
      );
    } catch (e) {
      throw ParseError(slug: e.toString());
    }
  }
}

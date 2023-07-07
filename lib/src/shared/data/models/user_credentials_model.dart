import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:decision_board_system/src/shared/data/entities/user_credentials_entity.dart';

part 'user_credentials_model.freezed.dart';

@freezed
class UserCredentialsModel with _$UserCredentialsModel {
  const UserCredentialsModel._();
  const factory UserCredentialsModel({
    String? userId,
    String? email,
    String? fullName,
  }) = _UserCredentialsModel;

  UserCredentialsEntity toUserCredentialsEntity() {
    return UserCredentialsEntity(
      userId: userId,
      email: email,
      fullName: fullName,
    );
  }
}

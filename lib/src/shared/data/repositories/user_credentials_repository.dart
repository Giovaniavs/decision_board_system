// ignore_for_file: avoid_print
import 'package:decision_board_system/src/shared/data/errors/app_error.dart';
import 'package:decision_board_system/src/shared/data/models/user_credentials_model.dart';
import 'package:decision_board_system/src/shared/data/repositories/storage_repository.dart';
import 'package:decision_board_system/src/shared/data/types/maybe.dart';
import 'package:decision_board_system/src/shared/data/types/result.dart';

class UserCredentialsRepository {
  final StorageRepository _storage;
  Maybe<UserCredentialsModel> _useCredentialsModel;

  UserCredentialsRepository({required StorageRepository storage})
      : _storage = storage,
        _useCredentialsModel = const Nothing<UserCredentialsModel>();

  Future<Result<UserCredentialsModel>> get() async {
    try {
      if (_useCredentialsModel is Nothing) {
        final Result<UserCredentialsModel> response =
            await _storage.readUserCredential();

        return response.handle(
          onSuccess: (data) {
            _useCredentialsModel = Just(data);

            return Success(data);
          },
          onFailure: (error) {
            print("getUserCredential failure: $error");

            return Failure(error);
          },
        );
      }
      return Success(_useCredentialsModel.asJust.value);
    } catch (e) {
      print("getUserCredential error: $e");

      return Failure(
        AppUnknownError(slug: "getUserCredential error"),
      );
    }
  }

  Future<Result> set(UserCredentialsModel userCredentials) async {
    final Result response = await _storage.writeUserCredential(
      userCredentialsEntity: userCredentials.toUserCredentialsEntity(),
    );
    response.handle(
      onSuccess: (data) {
        _useCredentialsModel = Just(userCredentials);
      },
      onFailure: (error) {
        print("Handle writeUserCredential failure");
        throw Failure(
          AppUnknownError(slug: "Handle writeUserCredential failure"),
        );
      },
    );
    return response;
  }

  Future<Result> patch({
    String? email,
    String? fullName,
    String? userId,
  }) async {
    final Result<UserCredentialsModel> getUserCredentials =
        await _storage.readUserCredential();

    return getUserCredentials.handle(
      onSuccess: (userCredentials) async {
        return await _storage.writeUserCredential(
          userCredentialsEntity:
              userCredentials.toUserCredentialsEntity().copyWith(
                    email: email ?? userCredentials.email,
                    fullName: fullName ?? userCredentials.fullName,
                    userId: userId ?? userCredentials.userId,
                  ),
        );
      },
      onFailure: (error) {
        print('patchUserCredential failure: $error');
        return Failure(
          AppUnknownError(slug: "patchUserCredential failure"),
        );
      },
    );
  }

  Future<Result> clear() async {
    final Result response = await _storage.clearUserCredential();
    response.handle(
      onSuccess: (data) {
        _useCredentialsModel = const Nothing<UserCredentialsModel>();
      },
      onFailure: (error) {
        print("clearUserCredential failure: $error");
        throw Failure(
          AppUnknownError(slug: "clearUserCredential failure"),
        );
      },
    );
    return response;
  }
}

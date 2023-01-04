import 'package:openredu_mobile_flutter/src/shared/data/entities/token_entity.dart';
import 'package:openredu_mobile_flutter/src/shared/data/errors/app_error.dart';
import 'package:openredu_mobile_flutter/src/shared/data/repositories/storage_repository.dart';
import 'package:openredu_mobile_flutter/src/shared/data/types/maybe.dart';
import 'package:openredu_mobile_flutter/src/shared/data/types/result.dart';

class TokenRepository {
  final StorageRepository _storage;
  Maybe<String> _token;

  TokenRepository({required StorageRepository storage})
      : _storage = storage,
        _token = const Nothing<String>();

  Future<Result<String>> get() async {
    if (_token is Nothing) {
      final Result<String> response = await _storage.readToken();
      response.handle(
        onSuccess: (data) {
          _token = Just(data);
        },
        onFailure: (_) {},
      );
      return response;
    } else {
      try {
        return Success<String>(_token.value!);
      } catch (e) {
        return Failure(AppUnknownError());
      }
    }
  }

  Future<Result> set(TokenEntity data) async {
    final Result response = await _storage.writeToken(data: data);

    response.handle(
      onSuccess: (_) {
        _token = Just<String>(data.token!);
      },
      onFailure: (_) {},
    );
    return response;
  }

  Future<Result> clear() async {
    final Result response = await _storage.clearToken();
    response.handle(
      onSuccess: (data) {
        _token = const Nothing<String>();
      },
      onFailure: (_) {},
    );
    return response;
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:openredu_mobile_flutter/src/dependency_injection.dart';
import 'package:openredu_mobile_flutter/src/shared/data/repositories/api_repository.dart';
import 'package:openredu_mobile_flutter/src/shared/data/repositories/storage_repository.dart';
import 'package:openredu_mobile_flutter/src/shared/data/repositories/token_repository.dart';
import 'package:openredu_mobile_flutter/src/shared/data/repositories/user_credentials_repository.dart';

void setupSharedDI() {
  di.registerLazySingleton(() => GlobalKey<NavigatorState>());

  di.registerLazySingleton(
    () => StorageRepository(storage: const FlutterSecureStorage()),
  );
  di.registerLazySingleton(() => TokenRepository(storage: di()));
  di.registerLazySingleton(() => UserCredentialsRepository(storage: di()));

  di.registerLazySingleton(
    () => ApiRepository(
      httpClient: di(),
      tokenRepository: di(),
      apiSecret: '',
    ),
  );
}

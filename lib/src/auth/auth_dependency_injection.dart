import 'package:openredu_mobile_flutter/src/auth/splash_screen/domain/splash_screen_usecase.dart';
import 'package:openredu_mobile_flutter/src/dependency_injection.dart';

void setupAuthDI() {
  // di.registerLazySingleton<SignUpRepository>(
  //   () => SignUpRepositoryImpl(
  //     apiRepository: di(),
  //   ),
  // );
  // di.registerLazySingleton<SignInRepository>(
  //   () => SignInRepositoryImpl(
  //     apiRepository: di(),
  //     googleSignIn: di(),
  //     storageRepository: di(),
  //   ),
  // );

  di.registerFactory(
    () => SplashScreenUseCase(),
  );
  // di.registerFactory(
  //   () => SignUpUseCase(
  //     signUpRepository: di(),
  //     signInRepository: di(),
  //     tokenRepository: di(),
  //     userCredentialsRepository: di(),
  //     storageRepository: di(),
  //   ),
  // );
  // di.registerFactory(
  //   () => SignInUseCase(
  //     signInRepository: di(),
  //     tokenRepository: di(),
  //     userCredentialsRepository: di(),
  //     storageRepository: di(),
  //   ),
  // );
}

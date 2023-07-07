import 'package:get_it/get_it.dart';
import 'package:openredu_mobile_flutter/src/shared/shared_dependency_injection.dart';
import 'package:openredu_mobile_flutter/src/splash_screen/domain/splash_screen_usecase.dart';

final GetIt di = GetIt.instance;

void setupDi() {
  setupSharedDI();
  di.registerFactory(
    () => SplashScreenUseCase(),
  );
}

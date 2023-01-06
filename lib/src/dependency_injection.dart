import 'package:get_it/get_it.dart';
import 'package:openredu_mobile_flutter/src/auth/auth_dependency_injection.dart';
import 'package:openredu_mobile_flutter/src/shared/shared_dependency_injection.dart';

final GetIt di = GetIt.instance;

void setupDi() {
  setupSharedDI();
  setupAuthDI();
}

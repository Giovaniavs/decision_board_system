import 'package:flutter/material.dart';
import 'package:openredu_mobile_flutter/src/app.dart';
import 'package:openredu_mobile_flutter/src/dependency_injection.dart';
import 'package:openredu_mobile_flutter/src/splash_screen/domain/splash_screen_usecase.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupDi();

  runApp(
    OpenReduMobile(
      splashScreenUseCase: di<SplashScreenUseCase>(),
    ),
  );
}

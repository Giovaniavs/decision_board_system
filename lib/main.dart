import 'package:flutter/material.dart';
import 'package:openredu_mobile_flutter/src/app.dart';
import 'package:openredu_mobile_flutter/src/auth/splash_screen/domain/splash_screen_usecase.dart';
import 'package:openredu_mobile_flutter/src/dependency_injection.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupDi();

  await SentryFlutter.init(
    (options) {
      options.dsn =
          'https://ee8dbd0c7a08460eb27f04314ba930e7@o4504449325989888.ingest.sentry.io/4504449331232768';
      options.tracesSampleRate = 1.0;
    },
    // Init your App.
    appRunner: () => runApp(
      OpenReduMobile(
        splashScreenUseCase: di<SplashScreenUseCase>(),
      ),
    ),
  );
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:openredu_mobile_flutter/src/auth/splash_screen/domain/splash_screen_usecase.dart';
import 'package:openredu_mobile_flutter/src/auth/splash_screen/presentation/smarties/splash_screen_smart_view.dart';
import 'package:openredu_mobile_flutter/src/dependency_injection.dart';
import 'package:openredu_mobile_flutter/src/shared/design_system/tokens/color_tokens.dart';

class OpenReduMobile extends StatefulWidget {
  final SplashScreenUseCase _splashScreenUseCase;

  const OpenReduMobile({
    Key? key,
    required SplashScreenUseCase splashScreenUseCase,
  })  : _splashScreenUseCase = splashScreenUseCase,
        super(key: key);

  @override
  State<OpenReduMobile> createState() => _OpenReduMobileState();
}

class _OpenReduMobileState extends State<OpenReduMobile> {
  final GlobalKey<NavigatorState> navigatorKey =
      di<GlobalKey<NavigatorState>>();
  @override
  Widget build(BuildContext context) {
    final app = MaterialApp(
      title: 'OpenRedu Mobile',
      navigatorKey: navigatorKey,
      theme: ThemeData(
        primaryColor: ColorTokens.primary,
        colorScheme: ColorScheme.fromSwatch(
          accentColor: ColorTokens.primary,
        ),
        canvasColor: Colors.transparent,
      ),
      supportedLocales: const [
        Locale('pt', 'BR'),
      ],
      localizationsDelegates: GlobalMaterialLocalizations.delegates,
      initialRoute: "/",
      home: SplashScreenSmartView(
        splashScreenUseCase: widget._splashScreenUseCase,
      ),
    );
    return GestureDetector(
      onTap: () {
        if (!FocusScope.of(context).hasPrimaryFocus) {
          FocusScope.of(context).requestFocus(
            FocusNode(),
          );
        }
      },
      child: app,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:openredu_mobile_flutter/src/auth/splash_screen/domain/splash_screen_usecase.dart';
import 'package:openredu_mobile_flutter/src/auth/splash_screen/presentation/dummies/splash_screen_login_or_registerment_screen.dart';
import 'package:openredu_mobile_flutter/src/auth/splash_screen/presentation/dummies/splash_screen_screen.dart';

class SplashScreenSmartView extends StatefulWidget {
  final SplashScreenUseCase _splashScreenUseCase;

  const SplashScreenSmartView({
    Key? key,
    required SplashScreenUseCase splashScreenUseCase,
  })  : _splashScreenUseCase = splashScreenUseCase,
        super(key: key);

  @override
  State<StatefulWidget> createState() => _SplashScreenSmartViewState();
}

class _SplashScreenSmartViewState extends State<SplashScreenSmartView> {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  late final List<Page> modulePages;

  @override
  void initState() {
    modulePages = [
      MaterialPage(
        child: SplashScreenScreen(
          splashScreenUseCase: widget._splashScreenUseCase,
        ),
      ),
      MaterialPage(
        child: SplashScreenLoginOrRegistermentScreen(
          splashScreenUseCase: widget._splashScreenUseCase,
        ),
      ),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SplashScreenUseCase, SplashScreenState>(
      bloc: widget._splashScreenUseCase,
      listener: _listener,
      listenWhen: _listenWhen,
      builder: _builder,
    );
  }

  void _listener(BuildContext context, SplashScreenState state) {
    state.flow.maybeMap(
      orElse: () {},
      toSignIn: (_) {
        // Navigator.of(context).push(
        //   MaterialPageRoute(
        //     builder: (context) => SignInSmartView(
        //       signInUseCase: di<SignInUseCase>(),
        //     ),
        //   ),
        // );
      },
      toSignUp: (_) {
        // Navigator.of(context).push(
        //   MaterialPageRoute(
        //     builder: (context) => SignUpSmartView(
        //       signUpUseCase: di<SignUpUseCase>(),
        //     ),
        //   ),
        // );
      },
    );
  }

  bool _listenWhen(SplashScreenState previous, SplashScreenState current) {
    return previous.flow != current.flow;
  }

  List<Page> _currentPageStack = [];

  List<Page> _pageList(SplashScreenFlow flow) {
    return flow.maybeMap(
      splash: (_) {
        _currentPageStack = [
          modulePages[0],
        ];
        return _currentPageStack;
      },
      loginOrRegistermentScreen: (_) {
        _currentPageStack = [
          modulePages[0],
          modulePages[1],
        ];
        return _currentPageStack;
      },
      orElse: () {
        return _currentPageStack;
      },
    );
  }

  Widget _builder(BuildContext context, SplashScreenState state) {
    return Navigator(
      key: navigatorKey,
      pages: _pageList(state.flow),
      onPopPage: (route, result) {
        if (route.navigator?.canPop() == false) {
          Navigator.of(context).pop();
        }
        return route.didPop(result);
      },
    );
  }
}

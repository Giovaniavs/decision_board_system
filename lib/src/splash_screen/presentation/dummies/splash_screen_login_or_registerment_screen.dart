import 'package:bottom_drawer/bottom_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:openredu_mobile_flutter/src/shared/design_system/assets/ob_images.dart';
import 'package:openredu_mobile_flutter/src/shared/design_system/tokens/color_tokens.dart';
import 'package:openredu_mobile_flutter/src/shared/design_system/tokens/spacing_tokens.dart';
import 'package:openredu_mobile_flutter/src/shared/widgets/blue_long_button.dart';
import 'package:openredu_mobile_flutter/src/shared/widgets/white_long_button.dart';
import 'package:openredu_mobile_flutter/src/splash_screen/domain/splash_screen_usecase.dart';

class SplashScreenLoginOrRegistermentScreen extends StatefulWidget {
  final SplashScreenUseCase _splashScrenUseCase;

  const SplashScreenLoginOrRegistermentScreen({
    Key? key,
    required SplashScreenUseCase splashScreenUseCase,
  })  : _splashScrenUseCase = splashScreenUseCase,
        super(key: key);

  @override
  State<StatefulWidget> createState() =>
      _SplashScreenLoginOrRegistermentScreenState();
}

class _SplashScreenLoginOrRegistermentScreenState
    extends State<SplashScreenLoginOrRegistermentScreen>
    with TickerProviderStateMixin {
  final BottomDrawerController _bottomDrawerController =
      BottomDrawerController();
  Animation<Offset>? _animOffset;

  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 1),
    vsync: this,
  )..animateTo(1);

  double smallLogo = 116.0;
  double bigLogo = 158.0;

  @override
  void initState() {
    final curve =
        CurvedAnimation(curve: Curves.decelerate, parent: _controller);
    _animOffset = Tween<Offset>(begin: const Offset(0.0, 1.0), end: Offset.zero)
        .animate(curve);
    SchedulerBinding.instance
        .addPostFrameCallback((_) => {_bottomDrawerController.open()});
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return BlocConsumer<SplashScreenUseCase, SplashScreenState>(
            listener: _listener,
            bloc: widget._splashScrenUseCase,
            builder: _builder,
            buildWhen: _buildWhen,
            listenWhen: _listenWhen,
          );
        },
      ),
      backgroundColor: ColorTokens.primary,
    );
  }

  Widget _builder(BuildContext context, SplashScreenState state) {
    return state.flow.maybeMap(
      orElse: () {
        return Container();
      },
      loginOrRegistermentScreen: (_) {
        Widget openReduLogo = ClipRRect(
          borderRadius: BorderRadius.circular(12.0),
          child: Image.asset(
            OpenReduImages.logoOpenRedu,
          ),
        );
        const Size biggest = Size.square(158);
        return Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 100.0,
            ),
            Column(
              children: [
                ConstrainedBox(
                  constraints:
                      const BoxConstraints(maxHeight: 158, maxWidth: 158),
                  child: Stack(
                    children: <Widget>[
                      PositionedTransition(
                        rect: RelativeRectTween(
                          begin: RelativeRect.fromSize(
                              Rect.fromLTWH(
                                  (biggest.width / 2) - bigLogo / 2,
                                  (biggest.height / 2) - bigLogo / 2,
                                  bigLogo,
                                  bigLogo),
                              biggest),
                          end: RelativeRect.fromSize(
                              Rect.fromLTWH((biggest.width / 2) - smallLogo / 2,
                                  0, smallLogo, smallLogo),
                              biggest),
                        ).animate(CurvedAnimation(
                          parent: _controller,
                          curve: Curves.fastOutSlowIn,
                        )),
                        child: openReduLogo,
                      ),
                    ],
                  ),
                ),
                FadeTransition(
                  opacity: _controller,
                  child: SlideTransition(
                    position: _animOffset!,
                    child: SizedBox(
                      width: 257.0,
                      child: Text(
                        "Aplicativo OpenRedu",
                        style: GoogleFonts.inter(
                          color: ColorTokens.whiteBackground,
                          fontSize: 16.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 200.0,
              child: BottomDrawer(
                header: Container(),
                body: Padding(
                  padding: const EdgeInsets.only(
                    left: SpacingTokens.hecto,
                    right: SpacingTokens.hecto,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      BlueLongButton(
                        buttonText: 'Faça o login',
                        onPressed: () {
                          widget._splashScrenUseCase.add(const SignIn());
                        },
                      ),
                      const SizedBox(
                        height: SpacingTokens.deka,
                      ),
                      WhiteLongButton(
                        buttonText: 'Faça o cadastro',
                        onPressed: () {
                          widget._splashScrenUseCase.add(const SignUp());
                        },
                      ),
                    ],
                  ),
                ),
                drawerHeight: 168.0,
                color: ColorTokens.whiteBackground,
                headerHeight: SpacingTokens.kilo,
                duration: const Duration(seconds: 1),
                controller: _bottomDrawerController,
              ),
            ),
          ],
        );
      },
    );
  }

  void _listener(BuildContext context, SplashScreenState state) {
    state.flow.maybeMap(
      orElse: () {},
      loginOrRegistermentScreen: (flow) {
        setState(
          () {
            WidgetsBinding.instance.addPostFrameCallback(
              (_) => {
                _bottomDrawerController.open(),
              },
            );
          },
        );
      },
    );
  }

  bool _listenWhen(SplashScreenState previous, SplashScreenState current) {
    return previous.flow != current.flow;
  }

  bool _buildWhen(SplashScreenState previous, SplashScreenState current) {
    return previous.flow != current.flow;
  }
}

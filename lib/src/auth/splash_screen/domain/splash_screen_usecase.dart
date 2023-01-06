import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'splash_screen_state.dart';
part 'splash_screen_event.dart';
part 'splash_screen_usecase.freezed.dart';

class SplashScreenUseCase extends Bloc<SplashScreenEvent, SplashScreenState> {
  SplashScreenUseCase() : super(SplashScreenState.initial());

  @override
  Stream<SplashScreenState> mapEventToState(SplashScreenEvent event) async* {
    yield* event.map(
      backToInitialScreen: _backToInitialScreen,
      signIn: _signIn,
      signUp: _signUp,
      toLoginOrRegistermentScreen: _toLoginOrRegistermentScreen,
    );
  }

  Stream<SplashScreenState> _backToInitialScreen(
      BackToInitialScreen value) async* {
    yield state;
  }

  Stream<SplashScreenState> _signIn(SignIn value) async* {
    yield state;
  }

  Stream<SplashScreenState> _signUp(SignUp value) async* {
    yield state;
  }

  Stream<SplashScreenState> _toLoginOrRegistermentScreen(
    ToLoginOrRegistermentScreen value,
  ) async* {
    yield state.copyWith(
      flow: const LoginOrRegistermentScreen(),
    );
  }
}

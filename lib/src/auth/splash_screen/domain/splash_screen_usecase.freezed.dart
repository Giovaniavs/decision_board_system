// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'splash_screen_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SplashScreenState {
  SplashScreenFlow get flow => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SplashScreenStateCopyWith<SplashScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SplashScreenStateCopyWith<$Res> {
  factory $SplashScreenStateCopyWith(
          SplashScreenState value, $Res Function(SplashScreenState) then) =
      _$SplashScreenStateCopyWithImpl<$Res, SplashScreenState>;
  @useResult
  $Res call({SplashScreenFlow flow});

  $SplashScreenFlowCopyWith<$Res> get flow;
}

/// @nodoc
class _$SplashScreenStateCopyWithImpl<$Res, $Val extends SplashScreenState>
    implements $SplashScreenStateCopyWith<$Res> {
  _$SplashScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flow = null,
  }) {
    return _then(_value.copyWith(
      flow: null == flow
          ? _value.flow
          : flow // ignore: cast_nullable_to_non_nullable
              as SplashScreenFlow,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SplashScreenFlowCopyWith<$Res> get flow {
    return $SplashScreenFlowCopyWith<$Res>(_value.flow, (value) {
      return _then(_value.copyWith(flow: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SplashScreenStateCopyWith<$Res>
    implements $SplashScreenStateCopyWith<$Res> {
  factory _$$_SplashScreenStateCopyWith(_$_SplashScreenState value,
          $Res Function(_$_SplashScreenState) then) =
      __$$_SplashScreenStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SplashScreenFlow flow});

  @override
  $SplashScreenFlowCopyWith<$Res> get flow;
}

/// @nodoc
class __$$_SplashScreenStateCopyWithImpl<$Res>
    extends _$SplashScreenStateCopyWithImpl<$Res, _$_SplashScreenState>
    implements _$$_SplashScreenStateCopyWith<$Res> {
  __$$_SplashScreenStateCopyWithImpl(
      _$_SplashScreenState _value, $Res Function(_$_SplashScreenState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flow = null,
  }) {
    return _then(_$_SplashScreenState(
      flow: null == flow
          ? _value.flow
          : flow // ignore: cast_nullable_to_non_nullable
              as SplashScreenFlow,
    ));
  }
}

/// @nodoc

class _$_SplashScreenState implements _SplashScreenState {
  const _$_SplashScreenState({required this.flow});

  @override
  final SplashScreenFlow flow;

  @override
  String toString() {
    return 'SplashScreenState(flow: $flow)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SplashScreenState &&
            (identical(other.flow, flow) || other.flow == flow));
  }

  @override
  int get hashCode => Object.hash(runtimeType, flow);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SplashScreenStateCopyWith<_$_SplashScreenState> get copyWith =>
      __$$_SplashScreenStateCopyWithImpl<_$_SplashScreenState>(
          this, _$identity);
}

abstract class _SplashScreenState implements SplashScreenState {
  const factory _SplashScreenState({required final SplashScreenFlow flow}) =
      _$_SplashScreenState;

  @override
  SplashScreenFlow get flow;
  @override
  @JsonKey(ignore: true)
  _$$_SplashScreenStateCopyWith<_$_SplashScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SplashScreenFlow {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() splash,
    required TResult Function() loginOrRegistermentScreen,
    required TResult Function() toSignIn,
    required TResult Function() toSignUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? splash,
    TResult? Function()? loginOrRegistermentScreen,
    TResult? Function()? toSignIn,
    TResult? Function()? toSignUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? splash,
    TResult Function()? loginOrRegistermentScreen,
    TResult Function()? toSignIn,
    TResult Function()? toSignUp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Splash value) splash,
    required TResult Function(LoginOrRegistermentScreen value)
        loginOrRegistermentScreen,
    required TResult Function(ToSignIn value) toSignIn,
    required TResult Function(ToSignUp value) toSignUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Splash value)? splash,
    TResult? Function(LoginOrRegistermentScreen value)?
        loginOrRegistermentScreen,
    TResult? Function(ToSignIn value)? toSignIn,
    TResult? Function(ToSignUp value)? toSignUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Splash value)? splash,
    TResult Function(LoginOrRegistermentScreen value)?
        loginOrRegistermentScreen,
    TResult Function(ToSignIn value)? toSignIn,
    TResult Function(ToSignUp value)? toSignUp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SplashScreenFlowCopyWith<$Res> {
  factory $SplashScreenFlowCopyWith(
          SplashScreenFlow value, $Res Function(SplashScreenFlow) then) =
      _$SplashScreenFlowCopyWithImpl<$Res, SplashScreenFlow>;
}

/// @nodoc
class _$SplashScreenFlowCopyWithImpl<$Res, $Val extends SplashScreenFlow>
    implements $SplashScreenFlowCopyWith<$Res> {
  _$SplashScreenFlowCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SplashCopyWith<$Res> {
  factory _$$SplashCopyWith(_$Splash value, $Res Function(_$Splash) then) =
      __$$SplashCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SplashCopyWithImpl<$Res>
    extends _$SplashScreenFlowCopyWithImpl<$Res, _$Splash>
    implements _$$SplashCopyWith<$Res> {
  __$$SplashCopyWithImpl(_$Splash _value, $Res Function(_$Splash) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Splash implements Splash {
  const _$Splash();

  @override
  String toString() {
    return 'SplashScreenFlow.splash()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Splash);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() splash,
    required TResult Function() loginOrRegistermentScreen,
    required TResult Function() toSignIn,
    required TResult Function() toSignUp,
  }) {
    return splash();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? splash,
    TResult? Function()? loginOrRegistermentScreen,
    TResult? Function()? toSignIn,
    TResult? Function()? toSignUp,
  }) {
    return splash?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? splash,
    TResult Function()? loginOrRegistermentScreen,
    TResult Function()? toSignIn,
    TResult Function()? toSignUp,
    required TResult orElse(),
  }) {
    if (splash != null) {
      return splash();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Splash value) splash,
    required TResult Function(LoginOrRegistermentScreen value)
        loginOrRegistermentScreen,
    required TResult Function(ToSignIn value) toSignIn,
    required TResult Function(ToSignUp value) toSignUp,
  }) {
    return splash(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Splash value)? splash,
    TResult? Function(LoginOrRegistermentScreen value)?
        loginOrRegistermentScreen,
    TResult? Function(ToSignIn value)? toSignIn,
    TResult? Function(ToSignUp value)? toSignUp,
  }) {
    return splash?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Splash value)? splash,
    TResult Function(LoginOrRegistermentScreen value)?
        loginOrRegistermentScreen,
    TResult Function(ToSignIn value)? toSignIn,
    TResult Function(ToSignUp value)? toSignUp,
    required TResult orElse(),
  }) {
    if (splash != null) {
      return splash(this);
    }
    return orElse();
  }
}

abstract class Splash implements SplashScreenFlow {
  const factory Splash() = _$Splash;
}

/// @nodoc
abstract class _$$LoginOrRegistermentScreenCopyWith<$Res> {
  factory _$$LoginOrRegistermentScreenCopyWith(
          _$LoginOrRegistermentScreen value,
          $Res Function(_$LoginOrRegistermentScreen) then) =
      __$$LoginOrRegistermentScreenCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginOrRegistermentScreenCopyWithImpl<$Res>
    extends _$SplashScreenFlowCopyWithImpl<$Res, _$LoginOrRegistermentScreen>
    implements _$$LoginOrRegistermentScreenCopyWith<$Res> {
  __$$LoginOrRegistermentScreenCopyWithImpl(_$LoginOrRegistermentScreen _value,
      $Res Function(_$LoginOrRegistermentScreen) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginOrRegistermentScreen implements LoginOrRegistermentScreen {
  const _$LoginOrRegistermentScreen();

  @override
  String toString() {
    return 'SplashScreenFlow.loginOrRegistermentScreen()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginOrRegistermentScreen);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() splash,
    required TResult Function() loginOrRegistermentScreen,
    required TResult Function() toSignIn,
    required TResult Function() toSignUp,
  }) {
    return loginOrRegistermentScreen();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? splash,
    TResult? Function()? loginOrRegistermentScreen,
    TResult? Function()? toSignIn,
    TResult? Function()? toSignUp,
  }) {
    return loginOrRegistermentScreen?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? splash,
    TResult Function()? loginOrRegistermentScreen,
    TResult Function()? toSignIn,
    TResult Function()? toSignUp,
    required TResult orElse(),
  }) {
    if (loginOrRegistermentScreen != null) {
      return loginOrRegistermentScreen();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Splash value) splash,
    required TResult Function(LoginOrRegistermentScreen value)
        loginOrRegistermentScreen,
    required TResult Function(ToSignIn value) toSignIn,
    required TResult Function(ToSignUp value) toSignUp,
  }) {
    return loginOrRegistermentScreen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Splash value)? splash,
    TResult? Function(LoginOrRegistermentScreen value)?
        loginOrRegistermentScreen,
    TResult? Function(ToSignIn value)? toSignIn,
    TResult? Function(ToSignUp value)? toSignUp,
  }) {
    return loginOrRegistermentScreen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Splash value)? splash,
    TResult Function(LoginOrRegistermentScreen value)?
        loginOrRegistermentScreen,
    TResult Function(ToSignIn value)? toSignIn,
    TResult Function(ToSignUp value)? toSignUp,
    required TResult orElse(),
  }) {
    if (loginOrRegistermentScreen != null) {
      return loginOrRegistermentScreen(this);
    }
    return orElse();
  }
}

abstract class LoginOrRegistermentScreen implements SplashScreenFlow {
  const factory LoginOrRegistermentScreen() = _$LoginOrRegistermentScreen;
}

/// @nodoc
abstract class _$$ToSignInCopyWith<$Res> {
  factory _$$ToSignInCopyWith(
          _$ToSignIn value, $Res Function(_$ToSignIn) then) =
      __$$ToSignInCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ToSignInCopyWithImpl<$Res>
    extends _$SplashScreenFlowCopyWithImpl<$Res, _$ToSignIn>
    implements _$$ToSignInCopyWith<$Res> {
  __$$ToSignInCopyWithImpl(_$ToSignIn _value, $Res Function(_$ToSignIn) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ToSignIn implements ToSignIn {
  const _$ToSignIn();

  @override
  String toString() {
    return 'SplashScreenFlow.toSignIn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ToSignIn);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() splash,
    required TResult Function() loginOrRegistermentScreen,
    required TResult Function() toSignIn,
    required TResult Function() toSignUp,
  }) {
    return toSignIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? splash,
    TResult? Function()? loginOrRegistermentScreen,
    TResult? Function()? toSignIn,
    TResult? Function()? toSignUp,
  }) {
    return toSignIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? splash,
    TResult Function()? loginOrRegistermentScreen,
    TResult Function()? toSignIn,
    TResult Function()? toSignUp,
    required TResult orElse(),
  }) {
    if (toSignIn != null) {
      return toSignIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Splash value) splash,
    required TResult Function(LoginOrRegistermentScreen value)
        loginOrRegistermentScreen,
    required TResult Function(ToSignIn value) toSignIn,
    required TResult Function(ToSignUp value) toSignUp,
  }) {
    return toSignIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Splash value)? splash,
    TResult? Function(LoginOrRegistermentScreen value)?
        loginOrRegistermentScreen,
    TResult? Function(ToSignIn value)? toSignIn,
    TResult? Function(ToSignUp value)? toSignUp,
  }) {
    return toSignIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Splash value)? splash,
    TResult Function(LoginOrRegistermentScreen value)?
        loginOrRegistermentScreen,
    TResult Function(ToSignIn value)? toSignIn,
    TResult Function(ToSignUp value)? toSignUp,
    required TResult orElse(),
  }) {
    if (toSignIn != null) {
      return toSignIn(this);
    }
    return orElse();
  }
}

abstract class ToSignIn implements SplashScreenFlow {
  const factory ToSignIn() = _$ToSignIn;
}

/// @nodoc
abstract class _$$ToSignUpCopyWith<$Res> {
  factory _$$ToSignUpCopyWith(
          _$ToSignUp value, $Res Function(_$ToSignUp) then) =
      __$$ToSignUpCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ToSignUpCopyWithImpl<$Res>
    extends _$SplashScreenFlowCopyWithImpl<$Res, _$ToSignUp>
    implements _$$ToSignUpCopyWith<$Res> {
  __$$ToSignUpCopyWithImpl(_$ToSignUp _value, $Res Function(_$ToSignUp) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ToSignUp implements ToSignUp {
  const _$ToSignUp();

  @override
  String toString() {
    return 'SplashScreenFlow.toSignUp()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ToSignUp);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() splash,
    required TResult Function() loginOrRegistermentScreen,
    required TResult Function() toSignIn,
    required TResult Function() toSignUp,
  }) {
    return toSignUp();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? splash,
    TResult? Function()? loginOrRegistermentScreen,
    TResult? Function()? toSignIn,
    TResult? Function()? toSignUp,
  }) {
    return toSignUp?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? splash,
    TResult Function()? loginOrRegistermentScreen,
    TResult Function()? toSignIn,
    TResult Function()? toSignUp,
    required TResult orElse(),
  }) {
    if (toSignUp != null) {
      return toSignUp();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Splash value) splash,
    required TResult Function(LoginOrRegistermentScreen value)
        loginOrRegistermentScreen,
    required TResult Function(ToSignIn value) toSignIn,
    required TResult Function(ToSignUp value) toSignUp,
  }) {
    return toSignUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Splash value)? splash,
    TResult? Function(LoginOrRegistermentScreen value)?
        loginOrRegistermentScreen,
    TResult? Function(ToSignIn value)? toSignIn,
    TResult? Function(ToSignUp value)? toSignUp,
  }) {
    return toSignUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Splash value)? splash,
    TResult Function(LoginOrRegistermentScreen value)?
        loginOrRegistermentScreen,
    TResult Function(ToSignIn value)? toSignIn,
    TResult Function(ToSignUp value)? toSignUp,
    required TResult orElse(),
  }) {
    if (toSignUp != null) {
      return toSignUp(this);
    }
    return orElse();
  }
}

abstract class ToSignUp implements SplashScreenFlow {
  const factory ToSignUp() = _$ToSignUp;
}

/// @nodoc
mixin _$SplashScreenEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() toLoginOrRegistermentScreen,
    required TResult Function() backToInitialScreen,
    required TResult Function() signIn,
    required TResult Function() signUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? toLoginOrRegistermentScreen,
    TResult? Function()? backToInitialScreen,
    TResult? Function()? signIn,
    TResult? Function()? signUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? toLoginOrRegistermentScreen,
    TResult Function()? backToInitialScreen,
    TResult Function()? signIn,
    TResult Function()? signUp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ToLoginOrRegistermentScreen value)
        toLoginOrRegistermentScreen,
    required TResult Function(BackToInitialScreen value) backToInitialScreen,
    required TResult Function(SignIn value) signIn,
    required TResult Function(SignUp value) signUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ToLoginOrRegistermentScreen value)?
        toLoginOrRegistermentScreen,
    TResult? Function(BackToInitialScreen value)? backToInitialScreen,
    TResult? Function(SignIn value)? signIn,
    TResult? Function(SignUp value)? signUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ToLoginOrRegistermentScreen value)?
        toLoginOrRegistermentScreen,
    TResult Function(BackToInitialScreen value)? backToInitialScreen,
    TResult Function(SignIn value)? signIn,
    TResult Function(SignUp value)? signUp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SplashScreenEventCopyWith<$Res> {
  factory $SplashScreenEventCopyWith(
          SplashScreenEvent value, $Res Function(SplashScreenEvent) then) =
      _$SplashScreenEventCopyWithImpl<$Res, SplashScreenEvent>;
}

/// @nodoc
class _$SplashScreenEventCopyWithImpl<$Res, $Val extends SplashScreenEvent>
    implements $SplashScreenEventCopyWith<$Res> {
  _$SplashScreenEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ToLoginOrRegistermentScreenCopyWith<$Res> {
  factory _$$ToLoginOrRegistermentScreenCopyWith(
          _$ToLoginOrRegistermentScreen value,
          $Res Function(_$ToLoginOrRegistermentScreen) then) =
      __$$ToLoginOrRegistermentScreenCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ToLoginOrRegistermentScreenCopyWithImpl<$Res>
    extends _$SplashScreenEventCopyWithImpl<$Res, _$ToLoginOrRegistermentScreen>
    implements _$$ToLoginOrRegistermentScreenCopyWith<$Res> {
  __$$ToLoginOrRegistermentScreenCopyWithImpl(
      _$ToLoginOrRegistermentScreen _value,
      $Res Function(_$ToLoginOrRegistermentScreen) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ToLoginOrRegistermentScreen implements ToLoginOrRegistermentScreen {
  const _$ToLoginOrRegistermentScreen();

  @override
  String toString() {
    return 'SplashScreenEvent.toLoginOrRegistermentScreen()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToLoginOrRegistermentScreen);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() toLoginOrRegistermentScreen,
    required TResult Function() backToInitialScreen,
    required TResult Function() signIn,
    required TResult Function() signUp,
  }) {
    return toLoginOrRegistermentScreen();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? toLoginOrRegistermentScreen,
    TResult? Function()? backToInitialScreen,
    TResult? Function()? signIn,
    TResult? Function()? signUp,
  }) {
    return toLoginOrRegistermentScreen?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? toLoginOrRegistermentScreen,
    TResult Function()? backToInitialScreen,
    TResult Function()? signIn,
    TResult Function()? signUp,
    required TResult orElse(),
  }) {
    if (toLoginOrRegistermentScreen != null) {
      return toLoginOrRegistermentScreen();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ToLoginOrRegistermentScreen value)
        toLoginOrRegistermentScreen,
    required TResult Function(BackToInitialScreen value) backToInitialScreen,
    required TResult Function(SignIn value) signIn,
    required TResult Function(SignUp value) signUp,
  }) {
    return toLoginOrRegistermentScreen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ToLoginOrRegistermentScreen value)?
        toLoginOrRegistermentScreen,
    TResult? Function(BackToInitialScreen value)? backToInitialScreen,
    TResult? Function(SignIn value)? signIn,
    TResult? Function(SignUp value)? signUp,
  }) {
    return toLoginOrRegistermentScreen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ToLoginOrRegistermentScreen value)?
        toLoginOrRegistermentScreen,
    TResult Function(BackToInitialScreen value)? backToInitialScreen,
    TResult Function(SignIn value)? signIn,
    TResult Function(SignUp value)? signUp,
    required TResult orElse(),
  }) {
    if (toLoginOrRegistermentScreen != null) {
      return toLoginOrRegistermentScreen(this);
    }
    return orElse();
  }
}

abstract class ToLoginOrRegistermentScreen implements SplashScreenEvent {
  const factory ToLoginOrRegistermentScreen() = _$ToLoginOrRegistermentScreen;
}

/// @nodoc
abstract class _$$BackToInitialScreenCopyWith<$Res> {
  factory _$$BackToInitialScreenCopyWith(_$BackToInitialScreen value,
          $Res Function(_$BackToInitialScreen) then) =
      __$$BackToInitialScreenCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BackToInitialScreenCopyWithImpl<$Res>
    extends _$SplashScreenEventCopyWithImpl<$Res, _$BackToInitialScreen>
    implements _$$BackToInitialScreenCopyWith<$Res> {
  __$$BackToInitialScreenCopyWithImpl(
      _$BackToInitialScreen _value, $Res Function(_$BackToInitialScreen) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BackToInitialScreen implements BackToInitialScreen {
  const _$BackToInitialScreen();

  @override
  String toString() {
    return 'SplashScreenEvent.backToInitialScreen()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BackToInitialScreen);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() toLoginOrRegistermentScreen,
    required TResult Function() backToInitialScreen,
    required TResult Function() signIn,
    required TResult Function() signUp,
  }) {
    return backToInitialScreen();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? toLoginOrRegistermentScreen,
    TResult? Function()? backToInitialScreen,
    TResult? Function()? signIn,
    TResult? Function()? signUp,
  }) {
    return backToInitialScreen?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? toLoginOrRegistermentScreen,
    TResult Function()? backToInitialScreen,
    TResult Function()? signIn,
    TResult Function()? signUp,
    required TResult orElse(),
  }) {
    if (backToInitialScreen != null) {
      return backToInitialScreen();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ToLoginOrRegistermentScreen value)
        toLoginOrRegistermentScreen,
    required TResult Function(BackToInitialScreen value) backToInitialScreen,
    required TResult Function(SignIn value) signIn,
    required TResult Function(SignUp value) signUp,
  }) {
    return backToInitialScreen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ToLoginOrRegistermentScreen value)?
        toLoginOrRegistermentScreen,
    TResult? Function(BackToInitialScreen value)? backToInitialScreen,
    TResult? Function(SignIn value)? signIn,
    TResult? Function(SignUp value)? signUp,
  }) {
    return backToInitialScreen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ToLoginOrRegistermentScreen value)?
        toLoginOrRegistermentScreen,
    TResult Function(BackToInitialScreen value)? backToInitialScreen,
    TResult Function(SignIn value)? signIn,
    TResult Function(SignUp value)? signUp,
    required TResult orElse(),
  }) {
    if (backToInitialScreen != null) {
      return backToInitialScreen(this);
    }
    return orElse();
  }
}

abstract class BackToInitialScreen implements SplashScreenEvent {
  const factory BackToInitialScreen() = _$BackToInitialScreen;
}

/// @nodoc
abstract class _$$SignInCopyWith<$Res> {
  factory _$$SignInCopyWith(_$SignIn value, $Res Function(_$SignIn) then) =
      __$$SignInCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignInCopyWithImpl<$Res>
    extends _$SplashScreenEventCopyWithImpl<$Res, _$SignIn>
    implements _$$SignInCopyWith<$Res> {
  __$$SignInCopyWithImpl(_$SignIn _value, $Res Function(_$SignIn) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignIn implements SignIn {
  const _$SignIn();

  @override
  String toString() {
    return 'SplashScreenEvent.signIn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignIn);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() toLoginOrRegistermentScreen,
    required TResult Function() backToInitialScreen,
    required TResult Function() signIn,
    required TResult Function() signUp,
  }) {
    return signIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? toLoginOrRegistermentScreen,
    TResult? Function()? backToInitialScreen,
    TResult? Function()? signIn,
    TResult? Function()? signUp,
  }) {
    return signIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? toLoginOrRegistermentScreen,
    TResult Function()? backToInitialScreen,
    TResult Function()? signIn,
    TResult Function()? signUp,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ToLoginOrRegistermentScreen value)
        toLoginOrRegistermentScreen,
    required TResult Function(BackToInitialScreen value) backToInitialScreen,
    required TResult Function(SignIn value) signIn,
    required TResult Function(SignUp value) signUp,
  }) {
    return signIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ToLoginOrRegistermentScreen value)?
        toLoginOrRegistermentScreen,
    TResult? Function(BackToInitialScreen value)? backToInitialScreen,
    TResult? Function(SignIn value)? signIn,
    TResult? Function(SignUp value)? signUp,
  }) {
    return signIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ToLoginOrRegistermentScreen value)?
        toLoginOrRegistermentScreen,
    TResult Function(BackToInitialScreen value)? backToInitialScreen,
    TResult Function(SignIn value)? signIn,
    TResult Function(SignUp value)? signUp,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(this);
    }
    return orElse();
  }
}

abstract class SignIn implements SplashScreenEvent {
  const factory SignIn() = _$SignIn;
}

/// @nodoc
abstract class _$$SignUpCopyWith<$Res> {
  factory _$$SignUpCopyWith(_$SignUp value, $Res Function(_$SignUp) then) =
      __$$SignUpCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignUpCopyWithImpl<$Res>
    extends _$SplashScreenEventCopyWithImpl<$Res, _$SignUp>
    implements _$$SignUpCopyWith<$Res> {
  __$$SignUpCopyWithImpl(_$SignUp _value, $Res Function(_$SignUp) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignUp implements SignUp {
  const _$SignUp();

  @override
  String toString() {
    return 'SplashScreenEvent.signUp()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignUp);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() toLoginOrRegistermentScreen,
    required TResult Function() backToInitialScreen,
    required TResult Function() signIn,
    required TResult Function() signUp,
  }) {
    return signUp();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? toLoginOrRegistermentScreen,
    TResult? Function()? backToInitialScreen,
    TResult? Function()? signIn,
    TResult? Function()? signUp,
  }) {
    return signUp?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? toLoginOrRegistermentScreen,
    TResult Function()? backToInitialScreen,
    TResult Function()? signIn,
    TResult Function()? signUp,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ToLoginOrRegistermentScreen value)
        toLoginOrRegistermentScreen,
    required TResult Function(BackToInitialScreen value) backToInitialScreen,
    required TResult Function(SignIn value) signIn,
    required TResult Function(SignUp value) signUp,
  }) {
    return signUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ToLoginOrRegistermentScreen value)?
        toLoginOrRegistermentScreen,
    TResult? Function(BackToInitialScreen value)? backToInitialScreen,
    TResult? Function(SignIn value)? signIn,
    TResult? Function(SignUp value)? signUp,
  }) {
    return signUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ToLoginOrRegistermentScreen value)?
        toLoginOrRegistermentScreen,
    TResult Function(BackToInitialScreen value)? backToInitialScreen,
    TResult Function(SignIn value)? signIn,
    TResult Function(SignUp value)? signUp,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(this);
    }
    return orElse();
  }
}

abstract class SignUp implements SplashScreenEvent {
  const factory SignUp() = _$SignUp;
}

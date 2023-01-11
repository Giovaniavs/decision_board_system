// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignInState {
  SignInForm get signInForm => throw _privateConstructorUsedError;
  SignInFlow get flow => throw _privateConstructorUsedError;
  RequestStatus<bool> get signInRequestStatus =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignInStateCopyWith<SignInState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInStateCopyWith<$Res> {
  factory $SignInStateCopyWith(
          SignInState value, $Res Function(SignInState) then) =
      _$SignInStateCopyWithImpl<$Res, SignInState>;
  @useResult
  $Res call(
      {SignInForm signInForm,
      SignInFlow flow,
      RequestStatus<bool> signInRequestStatus});

  $SignInFormCopyWith<$Res> get signInForm;
  $SignInFlowCopyWith<$Res> get flow;
  $RequestStatusCopyWith<bool, $Res> get signInRequestStatus;
}

/// @nodoc
class _$SignInStateCopyWithImpl<$Res, $Val extends SignInState>
    implements $SignInStateCopyWith<$Res> {
  _$SignInStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signInForm = null,
    Object? flow = null,
    Object? signInRequestStatus = null,
  }) {
    return _then(_value.copyWith(
      signInForm: null == signInForm
          ? _value.signInForm
          : signInForm // ignore: cast_nullable_to_non_nullable
              as SignInForm,
      flow: null == flow
          ? _value.flow
          : flow // ignore: cast_nullable_to_non_nullable
              as SignInFlow,
      signInRequestStatus: null == signInRequestStatus
          ? _value.signInRequestStatus
          : signInRequestStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus<bool>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SignInFormCopyWith<$Res> get signInForm {
    return $SignInFormCopyWith<$Res>(_value.signInForm, (value) {
      return _then(_value.copyWith(signInForm: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SignInFlowCopyWith<$Res> get flow {
    return $SignInFlowCopyWith<$Res>(_value.flow, (value) {
      return _then(_value.copyWith(flow: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RequestStatusCopyWith<bool, $Res> get signInRequestStatus {
    return $RequestStatusCopyWith<bool, $Res>(_value.signInRequestStatus,
        (value) {
      return _then(_value.copyWith(signInRequestStatus: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SignInStateCopyWith<$Res>
    implements $SignInStateCopyWith<$Res> {
  factory _$$_SignInStateCopyWith(
          _$_SignInState value, $Res Function(_$_SignInState) then) =
      __$$_SignInStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SignInForm signInForm,
      SignInFlow flow,
      RequestStatus<bool> signInRequestStatus});

  @override
  $SignInFormCopyWith<$Res> get signInForm;
  @override
  $SignInFlowCopyWith<$Res> get flow;
  @override
  $RequestStatusCopyWith<bool, $Res> get signInRequestStatus;
}

/// @nodoc
class __$$_SignInStateCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res, _$_SignInState>
    implements _$$_SignInStateCopyWith<$Res> {
  __$$_SignInStateCopyWithImpl(
      _$_SignInState _value, $Res Function(_$_SignInState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signInForm = null,
    Object? flow = null,
    Object? signInRequestStatus = null,
  }) {
    return _then(_$_SignInState(
      signInForm: null == signInForm
          ? _value.signInForm
          : signInForm // ignore: cast_nullable_to_non_nullable
              as SignInForm,
      flow: null == flow
          ? _value.flow
          : flow // ignore: cast_nullable_to_non_nullable
              as SignInFlow,
      signInRequestStatus: null == signInRequestStatus
          ? _value.signInRequestStatus
          : signInRequestStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus<bool>,
    ));
  }
}

/// @nodoc

class _$_SignInState implements _SignInState {
  const _$_SignInState(
      {required this.signInForm,
      required this.flow,
      required this.signInRequestStatus});

  @override
  final SignInForm signInForm;
  @override
  final SignInFlow flow;
  @override
  final RequestStatus<bool> signInRequestStatus;

  @override
  String toString() {
    return 'SignInState(signInForm: $signInForm, flow: $flow, signInRequestStatus: $signInRequestStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignInState &&
            (identical(other.signInForm, signInForm) ||
                other.signInForm == signInForm) &&
            (identical(other.flow, flow) || other.flow == flow) &&
            (identical(other.signInRequestStatus, signInRequestStatus) ||
                other.signInRequestStatus == signInRequestStatus));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, signInForm, flow, signInRequestStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignInStateCopyWith<_$_SignInState> get copyWith =>
      __$$_SignInStateCopyWithImpl<_$_SignInState>(this, _$identity);
}

abstract class _SignInState implements SignInState {
  const factory _SignInState(
      {required final SignInForm signInForm,
      required final SignInFlow flow,
      required final RequestStatus<bool> signInRequestStatus}) = _$_SignInState;

  @override
  SignInForm get signInForm;
  @override
  SignInFlow get flow;
  @override
  RequestStatus<bool> get signInRequestStatus;
  @override
  @JsonKey(ignore: true)
  _$$_SignInStateCopyWith<_$_SignInState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SignInFlow {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signIn,
    required TResult Function() toSignUp,
    required TResult Function() enterApp,
    required TResult Function() forgotPassword,
    required TResult Function() closeFlow,
    required TResult Function() loginErrorModal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signIn,
    TResult? Function()? toSignUp,
    TResult? Function()? enterApp,
    TResult? Function()? forgotPassword,
    TResult? Function()? closeFlow,
    TResult? Function()? loginErrorModal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signIn,
    TResult Function()? toSignUp,
    TResult Function()? enterApp,
    TResult Function()? forgotPassword,
    TResult Function()? closeFlow,
    TResult Function()? loginErrorModal,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignIn value) signIn,
    required TResult Function(ToSignUp value) toSignUp,
    required TResult Function(EnterApp value) enterApp,
    required TResult Function(ForgotPassword value) forgotPassword,
    required TResult Function(CloseFlow value) closeFlow,
    required TResult Function(LoginErrorModal value) loginErrorModal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignIn value)? signIn,
    TResult? Function(ToSignUp value)? toSignUp,
    TResult? Function(EnterApp value)? enterApp,
    TResult? Function(ForgotPassword value)? forgotPassword,
    TResult? Function(CloseFlow value)? closeFlow,
    TResult? Function(LoginErrorModal value)? loginErrorModal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignIn value)? signIn,
    TResult Function(ToSignUp value)? toSignUp,
    TResult Function(EnterApp value)? enterApp,
    TResult Function(ForgotPassword value)? forgotPassword,
    TResult Function(CloseFlow value)? closeFlow,
    TResult Function(LoginErrorModal value)? loginErrorModal,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInFlowCopyWith<$Res> {
  factory $SignInFlowCopyWith(
          SignInFlow value, $Res Function(SignInFlow) then) =
      _$SignInFlowCopyWithImpl<$Res, SignInFlow>;
}

/// @nodoc
class _$SignInFlowCopyWithImpl<$Res, $Val extends SignInFlow>
    implements $SignInFlowCopyWith<$Res> {
  _$SignInFlowCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SignInCopyWith<$Res> {
  factory _$$SignInCopyWith(_$SignIn value, $Res Function(_$SignIn) then) =
      __$$SignInCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignInCopyWithImpl<$Res>
    extends _$SignInFlowCopyWithImpl<$Res, _$SignIn>
    implements _$$SignInCopyWith<$Res> {
  __$$SignInCopyWithImpl(_$SignIn _value, $Res Function(_$SignIn) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignIn implements SignIn {
  const _$SignIn();

  @override
  String toString() {
    return 'SignInFlow.signIn()';
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
    required TResult Function() signIn,
    required TResult Function() toSignUp,
    required TResult Function() enterApp,
    required TResult Function() forgotPassword,
    required TResult Function() closeFlow,
    required TResult Function() loginErrorModal,
  }) {
    return signIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signIn,
    TResult? Function()? toSignUp,
    TResult? Function()? enterApp,
    TResult? Function()? forgotPassword,
    TResult? Function()? closeFlow,
    TResult? Function()? loginErrorModal,
  }) {
    return signIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signIn,
    TResult Function()? toSignUp,
    TResult Function()? enterApp,
    TResult Function()? forgotPassword,
    TResult Function()? closeFlow,
    TResult Function()? loginErrorModal,
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
    required TResult Function(SignIn value) signIn,
    required TResult Function(ToSignUp value) toSignUp,
    required TResult Function(EnterApp value) enterApp,
    required TResult Function(ForgotPassword value) forgotPassword,
    required TResult Function(CloseFlow value) closeFlow,
    required TResult Function(LoginErrorModal value) loginErrorModal,
  }) {
    return signIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignIn value)? signIn,
    TResult? Function(ToSignUp value)? toSignUp,
    TResult? Function(EnterApp value)? enterApp,
    TResult? Function(ForgotPassword value)? forgotPassword,
    TResult? Function(CloseFlow value)? closeFlow,
    TResult? Function(LoginErrorModal value)? loginErrorModal,
  }) {
    return signIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignIn value)? signIn,
    TResult Function(ToSignUp value)? toSignUp,
    TResult Function(EnterApp value)? enterApp,
    TResult Function(ForgotPassword value)? forgotPassword,
    TResult Function(CloseFlow value)? closeFlow,
    TResult Function(LoginErrorModal value)? loginErrorModal,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(this);
    }
    return orElse();
  }
}

abstract class SignIn implements SignInFlow {
  const factory SignIn() = _$SignIn;
}

/// @nodoc
abstract class _$$ToSignUpCopyWith<$Res> {
  factory _$$ToSignUpCopyWith(
          _$ToSignUp value, $Res Function(_$ToSignUp) then) =
      __$$ToSignUpCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ToSignUpCopyWithImpl<$Res>
    extends _$SignInFlowCopyWithImpl<$Res, _$ToSignUp>
    implements _$$ToSignUpCopyWith<$Res> {
  __$$ToSignUpCopyWithImpl(_$ToSignUp _value, $Res Function(_$ToSignUp) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ToSignUp implements ToSignUp {
  const _$ToSignUp();

  @override
  String toString() {
    return 'SignInFlow.toSignUp()';
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
    required TResult Function() signIn,
    required TResult Function() toSignUp,
    required TResult Function() enterApp,
    required TResult Function() forgotPassword,
    required TResult Function() closeFlow,
    required TResult Function() loginErrorModal,
  }) {
    return toSignUp();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signIn,
    TResult? Function()? toSignUp,
    TResult? Function()? enterApp,
    TResult? Function()? forgotPassword,
    TResult? Function()? closeFlow,
    TResult? Function()? loginErrorModal,
  }) {
    return toSignUp?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signIn,
    TResult Function()? toSignUp,
    TResult Function()? enterApp,
    TResult Function()? forgotPassword,
    TResult Function()? closeFlow,
    TResult Function()? loginErrorModal,
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
    required TResult Function(SignIn value) signIn,
    required TResult Function(ToSignUp value) toSignUp,
    required TResult Function(EnterApp value) enterApp,
    required TResult Function(ForgotPassword value) forgotPassword,
    required TResult Function(CloseFlow value) closeFlow,
    required TResult Function(LoginErrorModal value) loginErrorModal,
  }) {
    return toSignUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignIn value)? signIn,
    TResult? Function(ToSignUp value)? toSignUp,
    TResult? Function(EnterApp value)? enterApp,
    TResult? Function(ForgotPassword value)? forgotPassword,
    TResult? Function(CloseFlow value)? closeFlow,
    TResult? Function(LoginErrorModal value)? loginErrorModal,
  }) {
    return toSignUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignIn value)? signIn,
    TResult Function(ToSignUp value)? toSignUp,
    TResult Function(EnterApp value)? enterApp,
    TResult Function(ForgotPassword value)? forgotPassword,
    TResult Function(CloseFlow value)? closeFlow,
    TResult Function(LoginErrorModal value)? loginErrorModal,
    required TResult orElse(),
  }) {
    if (toSignUp != null) {
      return toSignUp(this);
    }
    return orElse();
  }
}

abstract class ToSignUp implements SignInFlow {
  const factory ToSignUp() = _$ToSignUp;
}

/// @nodoc
abstract class _$$EnterAppCopyWith<$Res> {
  factory _$$EnterAppCopyWith(
          _$EnterApp value, $Res Function(_$EnterApp) then) =
      __$$EnterAppCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EnterAppCopyWithImpl<$Res>
    extends _$SignInFlowCopyWithImpl<$Res, _$EnterApp>
    implements _$$EnterAppCopyWith<$Res> {
  __$$EnterAppCopyWithImpl(_$EnterApp _value, $Res Function(_$EnterApp) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EnterApp implements EnterApp {
  const _$EnterApp();

  @override
  String toString() {
    return 'SignInFlow.enterApp()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EnterApp);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signIn,
    required TResult Function() toSignUp,
    required TResult Function() enterApp,
    required TResult Function() forgotPassword,
    required TResult Function() closeFlow,
    required TResult Function() loginErrorModal,
  }) {
    return enterApp();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signIn,
    TResult? Function()? toSignUp,
    TResult? Function()? enterApp,
    TResult? Function()? forgotPassword,
    TResult? Function()? closeFlow,
    TResult? Function()? loginErrorModal,
  }) {
    return enterApp?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signIn,
    TResult Function()? toSignUp,
    TResult Function()? enterApp,
    TResult Function()? forgotPassword,
    TResult Function()? closeFlow,
    TResult Function()? loginErrorModal,
    required TResult orElse(),
  }) {
    if (enterApp != null) {
      return enterApp();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignIn value) signIn,
    required TResult Function(ToSignUp value) toSignUp,
    required TResult Function(EnterApp value) enterApp,
    required TResult Function(ForgotPassword value) forgotPassword,
    required TResult Function(CloseFlow value) closeFlow,
    required TResult Function(LoginErrorModal value) loginErrorModal,
  }) {
    return enterApp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignIn value)? signIn,
    TResult? Function(ToSignUp value)? toSignUp,
    TResult? Function(EnterApp value)? enterApp,
    TResult? Function(ForgotPassword value)? forgotPassword,
    TResult? Function(CloseFlow value)? closeFlow,
    TResult? Function(LoginErrorModal value)? loginErrorModal,
  }) {
    return enterApp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignIn value)? signIn,
    TResult Function(ToSignUp value)? toSignUp,
    TResult Function(EnterApp value)? enterApp,
    TResult Function(ForgotPassword value)? forgotPassword,
    TResult Function(CloseFlow value)? closeFlow,
    TResult Function(LoginErrorModal value)? loginErrorModal,
    required TResult orElse(),
  }) {
    if (enterApp != null) {
      return enterApp(this);
    }
    return orElse();
  }
}

abstract class EnterApp implements SignInFlow {
  const factory EnterApp() = _$EnterApp;
}

/// @nodoc
abstract class _$$ForgotPasswordCopyWith<$Res> {
  factory _$$ForgotPasswordCopyWith(
          _$ForgotPassword value, $Res Function(_$ForgotPassword) then) =
      __$$ForgotPasswordCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ForgotPasswordCopyWithImpl<$Res>
    extends _$SignInFlowCopyWithImpl<$Res, _$ForgotPassword>
    implements _$$ForgotPasswordCopyWith<$Res> {
  __$$ForgotPasswordCopyWithImpl(
      _$ForgotPassword _value, $Res Function(_$ForgotPassword) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ForgotPassword implements ForgotPassword {
  const _$ForgotPassword();

  @override
  String toString() {
    return 'SignInFlow.forgotPassword()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ForgotPassword);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signIn,
    required TResult Function() toSignUp,
    required TResult Function() enterApp,
    required TResult Function() forgotPassword,
    required TResult Function() closeFlow,
    required TResult Function() loginErrorModal,
  }) {
    return forgotPassword();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signIn,
    TResult? Function()? toSignUp,
    TResult? Function()? enterApp,
    TResult? Function()? forgotPassword,
    TResult? Function()? closeFlow,
    TResult? Function()? loginErrorModal,
  }) {
    return forgotPassword?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signIn,
    TResult Function()? toSignUp,
    TResult Function()? enterApp,
    TResult Function()? forgotPassword,
    TResult Function()? closeFlow,
    TResult Function()? loginErrorModal,
    required TResult orElse(),
  }) {
    if (forgotPassword != null) {
      return forgotPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignIn value) signIn,
    required TResult Function(ToSignUp value) toSignUp,
    required TResult Function(EnterApp value) enterApp,
    required TResult Function(ForgotPassword value) forgotPassword,
    required TResult Function(CloseFlow value) closeFlow,
    required TResult Function(LoginErrorModal value) loginErrorModal,
  }) {
    return forgotPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignIn value)? signIn,
    TResult? Function(ToSignUp value)? toSignUp,
    TResult? Function(EnterApp value)? enterApp,
    TResult? Function(ForgotPassword value)? forgotPassword,
    TResult? Function(CloseFlow value)? closeFlow,
    TResult? Function(LoginErrorModal value)? loginErrorModal,
  }) {
    return forgotPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignIn value)? signIn,
    TResult Function(ToSignUp value)? toSignUp,
    TResult Function(EnterApp value)? enterApp,
    TResult Function(ForgotPassword value)? forgotPassword,
    TResult Function(CloseFlow value)? closeFlow,
    TResult Function(LoginErrorModal value)? loginErrorModal,
    required TResult orElse(),
  }) {
    if (forgotPassword != null) {
      return forgotPassword(this);
    }
    return orElse();
  }
}

abstract class ForgotPassword implements SignInFlow {
  const factory ForgotPassword() = _$ForgotPassword;
}

/// @nodoc
abstract class _$$CloseFlowCopyWith<$Res> {
  factory _$$CloseFlowCopyWith(
          _$CloseFlow value, $Res Function(_$CloseFlow) then) =
      __$$CloseFlowCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CloseFlowCopyWithImpl<$Res>
    extends _$SignInFlowCopyWithImpl<$Res, _$CloseFlow>
    implements _$$CloseFlowCopyWith<$Res> {
  __$$CloseFlowCopyWithImpl(
      _$CloseFlow _value, $Res Function(_$CloseFlow) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CloseFlow implements CloseFlow {
  const _$CloseFlow();

  @override
  String toString() {
    return 'SignInFlow.closeFlow()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CloseFlow);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signIn,
    required TResult Function() toSignUp,
    required TResult Function() enterApp,
    required TResult Function() forgotPassword,
    required TResult Function() closeFlow,
    required TResult Function() loginErrorModal,
  }) {
    return closeFlow();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signIn,
    TResult? Function()? toSignUp,
    TResult? Function()? enterApp,
    TResult? Function()? forgotPassword,
    TResult? Function()? closeFlow,
    TResult? Function()? loginErrorModal,
  }) {
    return closeFlow?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signIn,
    TResult Function()? toSignUp,
    TResult Function()? enterApp,
    TResult Function()? forgotPassword,
    TResult Function()? closeFlow,
    TResult Function()? loginErrorModal,
    required TResult orElse(),
  }) {
    if (closeFlow != null) {
      return closeFlow();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignIn value) signIn,
    required TResult Function(ToSignUp value) toSignUp,
    required TResult Function(EnterApp value) enterApp,
    required TResult Function(ForgotPassword value) forgotPassword,
    required TResult Function(CloseFlow value) closeFlow,
    required TResult Function(LoginErrorModal value) loginErrorModal,
  }) {
    return closeFlow(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignIn value)? signIn,
    TResult? Function(ToSignUp value)? toSignUp,
    TResult? Function(EnterApp value)? enterApp,
    TResult? Function(ForgotPassword value)? forgotPassword,
    TResult? Function(CloseFlow value)? closeFlow,
    TResult? Function(LoginErrorModal value)? loginErrorModal,
  }) {
    return closeFlow?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignIn value)? signIn,
    TResult Function(ToSignUp value)? toSignUp,
    TResult Function(EnterApp value)? enterApp,
    TResult Function(ForgotPassword value)? forgotPassword,
    TResult Function(CloseFlow value)? closeFlow,
    TResult Function(LoginErrorModal value)? loginErrorModal,
    required TResult orElse(),
  }) {
    if (closeFlow != null) {
      return closeFlow(this);
    }
    return orElse();
  }
}

abstract class CloseFlow implements SignInFlow {
  const factory CloseFlow() = _$CloseFlow;
}

/// @nodoc
abstract class _$$LoginErrorModalCopyWith<$Res> {
  factory _$$LoginErrorModalCopyWith(
          _$LoginErrorModal value, $Res Function(_$LoginErrorModal) then) =
      __$$LoginErrorModalCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginErrorModalCopyWithImpl<$Res>
    extends _$SignInFlowCopyWithImpl<$Res, _$LoginErrorModal>
    implements _$$LoginErrorModalCopyWith<$Res> {
  __$$LoginErrorModalCopyWithImpl(
      _$LoginErrorModal _value, $Res Function(_$LoginErrorModal) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginErrorModal implements LoginErrorModal {
  const _$LoginErrorModal();

  @override
  String toString() {
    return 'SignInFlow.loginErrorModal()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginErrorModal);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signIn,
    required TResult Function() toSignUp,
    required TResult Function() enterApp,
    required TResult Function() forgotPassword,
    required TResult Function() closeFlow,
    required TResult Function() loginErrorModal,
  }) {
    return loginErrorModal();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signIn,
    TResult? Function()? toSignUp,
    TResult? Function()? enterApp,
    TResult? Function()? forgotPassword,
    TResult? Function()? closeFlow,
    TResult? Function()? loginErrorModal,
  }) {
    return loginErrorModal?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signIn,
    TResult Function()? toSignUp,
    TResult Function()? enterApp,
    TResult Function()? forgotPassword,
    TResult Function()? closeFlow,
    TResult Function()? loginErrorModal,
    required TResult orElse(),
  }) {
    if (loginErrorModal != null) {
      return loginErrorModal();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignIn value) signIn,
    required TResult Function(ToSignUp value) toSignUp,
    required TResult Function(EnterApp value) enterApp,
    required TResult Function(ForgotPassword value) forgotPassword,
    required TResult Function(CloseFlow value) closeFlow,
    required TResult Function(LoginErrorModal value) loginErrorModal,
  }) {
    return loginErrorModal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignIn value)? signIn,
    TResult? Function(ToSignUp value)? toSignUp,
    TResult? Function(EnterApp value)? enterApp,
    TResult? Function(ForgotPassword value)? forgotPassword,
    TResult? Function(CloseFlow value)? closeFlow,
    TResult? Function(LoginErrorModal value)? loginErrorModal,
  }) {
    return loginErrorModal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignIn value)? signIn,
    TResult Function(ToSignUp value)? toSignUp,
    TResult Function(EnterApp value)? enterApp,
    TResult Function(ForgotPassword value)? forgotPassword,
    TResult Function(CloseFlow value)? closeFlow,
    TResult Function(LoginErrorModal value)? loginErrorModal,
    required TResult orElse(),
  }) {
    if (loginErrorModal != null) {
      return loginErrorModal(this);
    }
    return orElse();
  }
}

abstract class LoginErrorModal implements SignInFlow {
  const factory LoginErrorModal() = _$LoginErrorModal;
}

/// @nodoc
mixin _$SignInEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() signUp,
    required TResult Function() toForgotPassword,
    required TResult Function() enterTheApp,
    required TResult Function() backToSignIn,
    required TResult Function() backToSignUpSignInChoice,
    required TResult Function(String value) emailChanged,
    required TResult Function(String value) passwordChanged,
    required TResult Function() submitSignInForm,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? signUp,
    TResult? Function()? toForgotPassword,
    TResult? Function()? enterTheApp,
    TResult? Function()? backToSignIn,
    TResult? Function()? backToSignUpSignInChoice,
    TResult? Function(String value)? emailChanged,
    TResult? Function(String value)? passwordChanged,
    TResult? Function()? submitSignInForm,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? signUp,
    TResult Function()? toForgotPassword,
    TResult Function()? enterTheApp,
    TResult Function()? backToSignIn,
    TResult Function()? backToSignUpSignInChoice,
    TResult Function(String value)? emailChanged,
    TResult Function(String value)? passwordChanged,
    TResult Function()? submitSignInForm,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(SignUp value) signUp,
    required TResult Function(ToForgotPassword value) toForgotPassword,
    required TResult Function(EnterTheApp value) enterTheApp,
    required TResult Function(BackToSignIn value) backToSignIn,
    required TResult Function(BackToSignUpSignInChoice value)
        backToSignUpSignInChoice,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(SubmitSignInForm value) submitSignInForm,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(SignUp value)? signUp,
    TResult? Function(ToForgotPassword value)? toForgotPassword,
    TResult? Function(EnterTheApp value)? enterTheApp,
    TResult? Function(BackToSignIn value)? backToSignIn,
    TResult? Function(BackToSignUpSignInChoice value)? backToSignUpSignInChoice,
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(SubmitSignInForm value)? submitSignInForm,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(SignUp value)? signUp,
    TResult Function(ToForgotPassword value)? toForgotPassword,
    TResult Function(EnterTheApp value)? enterTheApp,
    TResult Function(BackToSignIn value)? backToSignIn,
    TResult Function(BackToSignUpSignInChoice value)? backToSignUpSignInChoice,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SubmitSignInForm value)? submitSignInForm,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInEventCopyWith<$Res> {
  factory $SignInEventCopyWith(
          SignInEvent value, $Res Function(SignInEvent) then) =
      _$SignInEventCopyWithImpl<$Res, SignInEvent>;
}

/// @nodoc
class _$SignInEventCopyWithImpl<$Res, $Val extends SignInEvent>
    implements $SignInEventCopyWith<$Res> {
  _$SignInEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'SignInEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() signUp,
    required TResult Function() toForgotPassword,
    required TResult Function() enterTheApp,
    required TResult Function() backToSignIn,
    required TResult Function() backToSignUpSignInChoice,
    required TResult Function(String value) emailChanged,
    required TResult Function(String value) passwordChanged,
    required TResult Function() submitSignInForm,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? signUp,
    TResult? Function()? toForgotPassword,
    TResult? Function()? enterTheApp,
    TResult? Function()? backToSignIn,
    TResult? Function()? backToSignUpSignInChoice,
    TResult? Function(String value)? emailChanged,
    TResult? Function(String value)? passwordChanged,
    TResult? Function()? submitSignInForm,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? signUp,
    TResult Function()? toForgotPassword,
    TResult Function()? enterTheApp,
    TResult Function()? backToSignIn,
    TResult Function()? backToSignUpSignInChoice,
    TResult Function(String value)? emailChanged,
    TResult Function(String value)? passwordChanged,
    TResult Function()? submitSignInForm,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(SignUp value) signUp,
    required TResult Function(ToForgotPassword value) toForgotPassword,
    required TResult Function(EnterTheApp value) enterTheApp,
    required TResult Function(BackToSignIn value) backToSignIn,
    required TResult Function(BackToSignUpSignInChoice value)
        backToSignUpSignInChoice,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(SubmitSignInForm value) submitSignInForm,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(SignUp value)? signUp,
    TResult? Function(ToForgotPassword value)? toForgotPassword,
    TResult? Function(EnterTheApp value)? enterTheApp,
    TResult? Function(BackToSignIn value)? backToSignIn,
    TResult? Function(BackToSignUpSignInChoice value)? backToSignUpSignInChoice,
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(SubmitSignInForm value)? submitSignInForm,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(SignUp value)? signUp,
    TResult Function(ToForgotPassword value)? toForgotPassword,
    TResult Function(EnterTheApp value)? enterTheApp,
    TResult Function(BackToSignIn value)? backToSignIn,
    TResult Function(BackToSignUpSignInChoice value)? backToSignUpSignInChoice,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SubmitSignInForm value)? submitSignInForm,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements SignInEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$SignUpCopyWith<$Res> {
  factory _$$SignUpCopyWith(_$SignUp value, $Res Function(_$SignUp) then) =
      __$$SignUpCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignUpCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res, _$SignUp>
    implements _$$SignUpCopyWith<$Res> {
  __$$SignUpCopyWithImpl(_$SignUp _value, $Res Function(_$SignUp) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignUp implements SignUp {
  const _$SignUp();

  @override
  String toString() {
    return 'SignInEvent.signUp()';
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
    required TResult Function() started,
    required TResult Function() signUp,
    required TResult Function() toForgotPassword,
    required TResult Function() enterTheApp,
    required TResult Function() backToSignIn,
    required TResult Function() backToSignUpSignInChoice,
    required TResult Function(String value) emailChanged,
    required TResult Function(String value) passwordChanged,
    required TResult Function() submitSignInForm,
  }) {
    return signUp();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? signUp,
    TResult? Function()? toForgotPassword,
    TResult? Function()? enterTheApp,
    TResult? Function()? backToSignIn,
    TResult? Function()? backToSignUpSignInChoice,
    TResult? Function(String value)? emailChanged,
    TResult? Function(String value)? passwordChanged,
    TResult? Function()? submitSignInForm,
  }) {
    return signUp?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? signUp,
    TResult Function()? toForgotPassword,
    TResult Function()? enterTheApp,
    TResult Function()? backToSignIn,
    TResult Function()? backToSignUpSignInChoice,
    TResult Function(String value)? emailChanged,
    TResult Function(String value)? passwordChanged,
    TResult Function()? submitSignInForm,
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
    required TResult Function(_Started value) started,
    required TResult Function(SignUp value) signUp,
    required TResult Function(ToForgotPassword value) toForgotPassword,
    required TResult Function(EnterTheApp value) enterTheApp,
    required TResult Function(BackToSignIn value) backToSignIn,
    required TResult Function(BackToSignUpSignInChoice value)
        backToSignUpSignInChoice,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(SubmitSignInForm value) submitSignInForm,
  }) {
    return signUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(SignUp value)? signUp,
    TResult? Function(ToForgotPassword value)? toForgotPassword,
    TResult? Function(EnterTheApp value)? enterTheApp,
    TResult? Function(BackToSignIn value)? backToSignIn,
    TResult? Function(BackToSignUpSignInChoice value)? backToSignUpSignInChoice,
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(SubmitSignInForm value)? submitSignInForm,
  }) {
    return signUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(SignUp value)? signUp,
    TResult Function(ToForgotPassword value)? toForgotPassword,
    TResult Function(EnterTheApp value)? enterTheApp,
    TResult Function(BackToSignIn value)? backToSignIn,
    TResult Function(BackToSignUpSignInChoice value)? backToSignUpSignInChoice,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SubmitSignInForm value)? submitSignInForm,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(this);
    }
    return orElse();
  }
}

abstract class SignUp implements SignInEvent {
  const factory SignUp() = _$SignUp;
}

/// @nodoc
abstract class _$$ToForgotPasswordCopyWith<$Res> {
  factory _$$ToForgotPasswordCopyWith(
          _$ToForgotPassword value, $Res Function(_$ToForgotPassword) then) =
      __$$ToForgotPasswordCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ToForgotPasswordCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res, _$ToForgotPassword>
    implements _$$ToForgotPasswordCopyWith<$Res> {
  __$$ToForgotPasswordCopyWithImpl(
      _$ToForgotPassword _value, $Res Function(_$ToForgotPassword) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ToForgotPassword implements ToForgotPassword {
  const _$ToForgotPassword();

  @override
  String toString() {
    return 'SignInEvent.toForgotPassword()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ToForgotPassword);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() signUp,
    required TResult Function() toForgotPassword,
    required TResult Function() enterTheApp,
    required TResult Function() backToSignIn,
    required TResult Function() backToSignUpSignInChoice,
    required TResult Function(String value) emailChanged,
    required TResult Function(String value) passwordChanged,
    required TResult Function() submitSignInForm,
  }) {
    return toForgotPassword();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? signUp,
    TResult? Function()? toForgotPassword,
    TResult? Function()? enterTheApp,
    TResult? Function()? backToSignIn,
    TResult? Function()? backToSignUpSignInChoice,
    TResult? Function(String value)? emailChanged,
    TResult? Function(String value)? passwordChanged,
    TResult? Function()? submitSignInForm,
  }) {
    return toForgotPassword?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? signUp,
    TResult Function()? toForgotPassword,
    TResult Function()? enterTheApp,
    TResult Function()? backToSignIn,
    TResult Function()? backToSignUpSignInChoice,
    TResult Function(String value)? emailChanged,
    TResult Function(String value)? passwordChanged,
    TResult Function()? submitSignInForm,
    required TResult orElse(),
  }) {
    if (toForgotPassword != null) {
      return toForgotPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(SignUp value) signUp,
    required TResult Function(ToForgotPassword value) toForgotPassword,
    required TResult Function(EnterTheApp value) enterTheApp,
    required TResult Function(BackToSignIn value) backToSignIn,
    required TResult Function(BackToSignUpSignInChoice value)
        backToSignUpSignInChoice,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(SubmitSignInForm value) submitSignInForm,
  }) {
    return toForgotPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(SignUp value)? signUp,
    TResult? Function(ToForgotPassword value)? toForgotPassword,
    TResult? Function(EnterTheApp value)? enterTheApp,
    TResult? Function(BackToSignIn value)? backToSignIn,
    TResult? Function(BackToSignUpSignInChoice value)? backToSignUpSignInChoice,
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(SubmitSignInForm value)? submitSignInForm,
  }) {
    return toForgotPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(SignUp value)? signUp,
    TResult Function(ToForgotPassword value)? toForgotPassword,
    TResult Function(EnterTheApp value)? enterTheApp,
    TResult Function(BackToSignIn value)? backToSignIn,
    TResult Function(BackToSignUpSignInChoice value)? backToSignUpSignInChoice,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SubmitSignInForm value)? submitSignInForm,
    required TResult orElse(),
  }) {
    if (toForgotPassword != null) {
      return toForgotPassword(this);
    }
    return orElse();
  }
}

abstract class ToForgotPassword implements SignInEvent {
  const factory ToForgotPassword() = _$ToForgotPassword;
}

/// @nodoc
abstract class _$$EnterTheAppCopyWith<$Res> {
  factory _$$EnterTheAppCopyWith(
          _$EnterTheApp value, $Res Function(_$EnterTheApp) then) =
      __$$EnterTheAppCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EnterTheAppCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res, _$EnterTheApp>
    implements _$$EnterTheAppCopyWith<$Res> {
  __$$EnterTheAppCopyWithImpl(
      _$EnterTheApp _value, $Res Function(_$EnterTheApp) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EnterTheApp implements EnterTheApp {
  const _$EnterTheApp();

  @override
  String toString() {
    return 'SignInEvent.enterTheApp()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EnterTheApp);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() signUp,
    required TResult Function() toForgotPassword,
    required TResult Function() enterTheApp,
    required TResult Function() backToSignIn,
    required TResult Function() backToSignUpSignInChoice,
    required TResult Function(String value) emailChanged,
    required TResult Function(String value) passwordChanged,
    required TResult Function() submitSignInForm,
  }) {
    return enterTheApp();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? signUp,
    TResult? Function()? toForgotPassword,
    TResult? Function()? enterTheApp,
    TResult? Function()? backToSignIn,
    TResult? Function()? backToSignUpSignInChoice,
    TResult? Function(String value)? emailChanged,
    TResult? Function(String value)? passwordChanged,
    TResult? Function()? submitSignInForm,
  }) {
    return enterTheApp?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? signUp,
    TResult Function()? toForgotPassword,
    TResult Function()? enterTheApp,
    TResult Function()? backToSignIn,
    TResult Function()? backToSignUpSignInChoice,
    TResult Function(String value)? emailChanged,
    TResult Function(String value)? passwordChanged,
    TResult Function()? submitSignInForm,
    required TResult orElse(),
  }) {
    if (enterTheApp != null) {
      return enterTheApp();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(SignUp value) signUp,
    required TResult Function(ToForgotPassword value) toForgotPassword,
    required TResult Function(EnterTheApp value) enterTheApp,
    required TResult Function(BackToSignIn value) backToSignIn,
    required TResult Function(BackToSignUpSignInChoice value)
        backToSignUpSignInChoice,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(SubmitSignInForm value) submitSignInForm,
  }) {
    return enterTheApp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(SignUp value)? signUp,
    TResult? Function(ToForgotPassword value)? toForgotPassword,
    TResult? Function(EnterTheApp value)? enterTheApp,
    TResult? Function(BackToSignIn value)? backToSignIn,
    TResult? Function(BackToSignUpSignInChoice value)? backToSignUpSignInChoice,
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(SubmitSignInForm value)? submitSignInForm,
  }) {
    return enterTheApp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(SignUp value)? signUp,
    TResult Function(ToForgotPassword value)? toForgotPassword,
    TResult Function(EnterTheApp value)? enterTheApp,
    TResult Function(BackToSignIn value)? backToSignIn,
    TResult Function(BackToSignUpSignInChoice value)? backToSignUpSignInChoice,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SubmitSignInForm value)? submitSignInForm,
    required TResult orElse(),
  }) {
    if (enterTheApp != null) {
      return enterTheApp(this);
    }
    return orElse();
  }
}

abstract class EnterTheApp implements SignInEvent {
  const factory EnterTheApp() = _$EnterTheApp;
}

/// @nodoc
abstract class _$$BackToSignInCopyWith<$Res> {
  factory _$$BackToSignInCopyWith(
          _$BackToSignIn value, $Res Function(_$BackToSignIn) then) =
      __$$BackToSignInCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BackToSignInCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res, _$BackToSignIn>
    implements _$$BackToSignInCopyWith<$Res> {
  __$$BackToSignInCopyWithImpl(
      _$BackToSignIn _value, $Res Function(_$BackToSignIn) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BackToSignIn implements BackToSignIn {
  const _$BackToSignIn();

  @override
  String toString() {
    return 'SignInEvent.backToSignIn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BackToSignIn);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() signUp,
    required TResult Function() toForgotPassword,
    required TResult Function() enterTheApp,
    required TResult Function() backToSignIn,
    required TResult Function() backToSignUpSignInChoice,
    required TResult Function(String value) emailChanged,
    required TResult Function(String value) passwordChanged,
    required TResult Function() submitSignInForm,
  }) {
    return backToSignIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? signUp,
    TResult? Function()? toForgotPassword,
    TResult? Function()? enterTheApp,
    TResult? Function()? backToSignIn,
    TResult? Function()? backToSignUpSignInChoice,
    TResult? Function(String value)? emailChanged,
    TResult? Function(String value)? passwordChanged,
    TResult? Function()? submitSignInForm,
  }) {
    return backToSignIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? signUp,
    TResult Function()? toForgotPassword,
    TResult Function()? enterTheApp,
    TResult Function()? backToSignIn,
    TResult Function()? backToSignUpSignInChoice,
    TResult Function(String value)? emailChanged,
    TResult Function(String value)? passwordChanged,
    TResult Function()? submitSignInForm,
    required TResult orElse(),
  }) {
    if (backToSignIn != null) {
      return backToSignIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(SignUp value) signUp,
    required TResult Function(ToForgotPassword value) toForgotPassword,
    required TResult Function(EnterTheApp value) enterTheApp,
    required TResult Function(BackToSignIn value) backToSignIn,
    required TResult Function(BackToSignUpSignInChoice value)
        backToSignUpSignInChoice,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(SubmitSignInForm value) submitSignInForm,
  }) {
    return backToSignIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(SignUp value)? signUp,
    TResult? Function(ToForgotPassword value)? toForgotPassword,
    TResult? Function(EnterTheApp value)? enterTheApp,
    TResult? Function(BackToSignIn value)? backToSignIn,
    TResult? Function(BackToSignUpSignInChoice value)? backToSignUpSignInChoice,
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(SubmitSignInForm value)? submitSignInForm,
  }) {
    return backToSignIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(SignUp value)? signUp,
    TResult Function(ToForgotPassword value)? toForgotPassword,
    TResult Function(EnterTheApp value)? enterTheApp,
    TResult Function(BackToSignIn value)? backToSignIn,
    TResult Function(BackToSignUpSignInChoice value)? backToSignUpSignInChoice,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SubmitSignInForm value)? submitSignInForm,
    required TResult orElse(),
  }) {
    if (backToSignIn != null) {
      return backToSignIn(this);
    }
    return orElse();
  }
}

abstract class BackToSignIn implements SignInEvent {
  const factory BackToSignIn() = _$BackToSignIn;
}

/// @nodoc
abstract class _$$BackToSignUpSignInChoiceCopyWith<$Res> {
  factory _$$BackToSignUpSignInChoiceCopyWith(_$BackToSignUpSignInChoice value,
          $Res Function(_$BackToSignUpSignInChoice) then) =
      __$$BackToSignUpSignInChoiceCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BackToSignUpSignInChoiceCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res, _$BackToSignUpSignInChoice>
    implements _$$BackToSignUpSignInChoiceCopyWith<$Res> {
  __$$BackToSignUpSignInChoiceCopyWithImpl(_$BackToSignUpSignInChoice _value,
      $Res Function(_$BackToSignUpSignInChoice) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BackToSignUpSignInChoice implements BackToSignUpSignInChoice {
  const _$BackToSignUpSignInChoice();

  @override
  String toString() {
    return 'SignInEvent.backToSignUpSignInChoice()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BackToSignUpSignInChoice);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() signUp,
    required TResult Function() toForgotPassword,
    required TResult Function() enterTheApp,
    required TResult Function() backToSignIn,
    required TResult Function() backToSignUpSignInChoice,
    required TResult Function(String value) emailChanged,
    required TResult Function(String value) passwordChanged,
    required TResult Function() submitSignInForm,
  }) {
    return backToSignUpSignInChoice();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? signUp,
    TResult? Function()? toForgotPassword,
    TResult? Function()? enterTheApp,
    TResult? Function()? backToSignIn,
    TResult? Function()? backToSignUpSignInChoice,
    TResult? Function(String value)? emailChanged,
    TResult? Function(String value)? passwordChanged,
    TResult? Function()? submitSignInForm,
  }) {
    return backToSignUpSignInChoice?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? signUp,
    TResult Function()? toForgotPassword,
    TResult Function()? enterTheApp,
    TResult Function()? backToSignIn,
    TResult Function()? backToSignUpSignInChoice,
    TResult Function(String value)? emailChanged,
    TResult Function(String value)? passwordChanged,
    TResult Function()? submitSignInForm,
    required TResult orElse(),
  }) {
    if (backToSignUpSignInChoice != null) {
      return backToSignUpSignInChoice();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(SignUp value) signUp,
    required TResult Function(ToForgotPassword value) toForgotPassword,
    required TResult Function(EnterTheApp value) enterTheApp,
    required TResult Function(BackToSignIn value) backToSignIn,
    required TResult Function(BackToSignUpSignInChoice value)
        backToSignUpSignInChoice,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(SubmitSignInForm value) submitSignInForm,
  }) {
    return backToSignUpSignInChoice(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(SignUp value)? signUp,
    TResult? Function(ToForgotPassword value)? toForgotPassword,
    TResult? Function(EnterTheApp value)? enterTheApp,
    TResult? Function(BackToSignIn value)? backToSignIn,
    TResult? Function(BackToSignUpSignInChoice value)? backToSignUpSignInChoice,
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(SubmitSignInForm value)? submitSignInForm,
  }) {
    return backToSignUpSignInChoice?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(SignUp value)? signUp,
    TResult Function(ToForgotPassword value)? toForgotPassword,
    TResult Function(EnterTheApp value)? enterTheApp,
    TResult Function(BackToSignIn value)? backToSignIn,
    TResult Function(BackToSignUpSignInChoice value)? backToSignUpSignInChoice,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SubmitSignInForm value)? submitSignInForm,
    required TResult orElse(),
  }) {
    if (backToSignUpSignInChoice != null) {
      return backToSignUpSignInChoice(this);
    }
    return orElse();
  }
}

abstract class BackToSignUpSignInChoice implements SignInEvent {
  const factory BackToSignUpSignInChoice() = _$BackToSignUpSignInChoice;
}

/// @nodoc
abstract class _$$EmailChangedCopyWith<$Res> {
  factory _$$EmailChangedCopyWith(
          _$EmailChanged value, $Res Function(_$EmailChanged) then) =
      __$$EmailChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$EmailChangedCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res, _$EmailChanged>
    implements _$$EmailChangedCopyWith<$Res> {
  __$$EmailChangedCopyWithImpl(
      _$EmailChanged _value, $Res Function(_$EmailChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$EmailChanged(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EmailChanged implements EmailChanged {
  const _$EmailChanged(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'SignInEvent.emailChanged(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailChanged &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmailChangedCopyWith<_$EmailChanged> get copyWith =>
      __$$EmailChangedCopyWithImpl<_$EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() signUp,
    required TResult Function() toForgotPassword,
    required TResult Function() enterTheApp,
    required TResult Function() backToSignIn,
    required TResult Function() backToSignUpSignInChoice,
    required TResult Function(String value) emailChanged,
    required TResult Function(String value) passwordChanged,
    required TResult Function() submitSignInForm,
  }) {
    return emailChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? signUp,
    TResult? Function()? toForgotPassword,
    TResult? Function()? enterTheApp,
    TResult? Function()? backToSignIn,
    TResult? Function()? backToSignUpSignInChoice,
    TResult? Function(String value)? emailChanged,
    TResult? Function(String value)? passwordChanged,
    TResult? Function()? submitSignInForm,
  }) {
    return emailChanged?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? signUp,
    TResult Function()? toForgotPassword,
    TResult Function()? enterTheApp,
    TResult Function()? backToSignIn,
    TResult Function()? backToSignUpSignInChoice,
    TResult Function(String value)? emailChanged,
    TResult Function(String value)? passwordChanged,
    TResult Function()? submitSignInForm,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(SignUp value) signUp,
    required TResult Function(ToForgotPassword value) toForgotPassword,
    required TResult Function(EnterTheApp value) enterTheApp,
    required TResult Function(BackToSignIn value) backToSignIn,
    required TResult Function(BackToSignUpSignInChoice value)
        backToSignUpSignInChoice,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(SubmitSignInForm value) submitSignInForm,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(SignUp value)? signUp,
    TResult? Function(ToForgotPassword value)? toForgotPassword,
    TResult? Function(EnterTheApp value)? enterTheApp,
    TResult? Function(BackToSignIn value)? backToSignIn,
    TResult? Function(BackToSignUpSignInChoice value)? backToSignUpSignInChoice,
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(SubmitSignInForm value)? submitSignInForm,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(SignUp value)? signUp,
    TResult Function(ToForgotPassword value)? toForgotPassword,
    TResult Function(EnterTheApp value)? enterTheApp,
    TResult Function(BackToSignIn value)? backToSignIn,
    TResult Function(BackToSignUpSignInChoice value)? backToSignUpSignInChoice,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SubmitSignInForm value)? submitSignInForm,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class EmailChanged implements SignInEvent {
  const factory EmailChanged(final String value) = _$EmailChanged;

  String get value;
  @JsonKey(ignore: true)
  _$$EmailChangedCopyWith<_$EmailChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PasswordChangedCopyWith<$Res> {
  factory _$$PasswordChangedCopyWith(
          _$PasswordChanged value, $Res Function(_$PasswordChanged) then) =
      __$$PasswordChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$PasswordChangedCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res, _$PasswordChanged>
    implements _$$PasswordChangedCopyWith<$Res> {
  __$$PasswordChangedCopyWithImpl(
      _$PasswordChanged _value, $Res Function(_$PasswordChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$PasswordChanged(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PasswordChanged implements PasswordChanged {
  const _$PasswordChanged(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'SignInEvent.passwordChanged(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordChanged &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordChangedCopyWith<_$PasswordChanged> get copyWith =>
      __$$PasswordChangedCopyWithImpl<_$PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() signUp,
    required TResult Function() toForgotPassword,
    required TResult Function() enterTheApp,
    required TResult Function() backToSignIn,
    required TResult Function() backToSignUpSignInChoice,
    required TResult Function(String value) emailChanged,
    required TResult Function(String value) passwordChanged,
    required TResult Function() submitSignInForm,
  }) {
    return passwordChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? signUp,
    TResult? Function()? toForgotPassword,
    TResult? Function()? enterTheApp,
    TResult? Function()? backToSignIn,
    TResult? Function()? backToSignUpSignInChoice,
    TResult? Function(String value)? emailChanged,
    TResult? Function(String value)? passwordChanged,
    TResult? Function()? submitSignInForm,
  }) {
    return passwordChanged?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? signUp,
    TResult Function()? toForgotPassword,
    TResult Function()? enterTheApp,
    TResult Function()? backToSignIn,
    TResult Function()? backToSignUpSignInChoice,
    TResult Function(String value)? emailChanged,
    TResult Function(String value)? passwordChanged,
    TResult Function()? submitSignInForm,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(SignUp value) signUp,
    required TResult Function(ToForgotPassword value) toForgotPassword,
    required TResult Function(EnterTheApp value) enterTheApp,
    required TResult Function(BackToSignIn value) backToSignIn,
    required TResult Function(BackToSignUpSignInChoice value)
        backToSignUpSignInChoice,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(SubmitSignInForm value) submitSignInForm,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(SignUp value)? signUp,
    TResult? Function(ToForgotPassword value)? toForgotPassword,
    TResult? Function(EnterTheApp value)? enterTheApp,
    TResult? Function(BackToSignIn value)? backToSignIn,
    TResult? Function(BackToSignUpSignInChoice value)? backToSignUpSignInChoice,
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(SubmitSignInForm value)? submitSignInForm,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(SignUp value)? signUp,
    TResult Function(ToForgotPassword value)? toForgotPassword,
    TResult Function(EnterTheApp value)? enterTheApp,
    TResult Function(BackToSignIn value)? backToSignIn,
    TResult Function(BackToSignUpSignInChoice value)? backToSignUpSignInChoice,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SubmitSignInForm value)? submitSignInForm,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChanged implements SignInEvent {
  const factory PasswordChanged(final String value) = _$PasswordChanged;

  String get value;
  @JsonKey(ignore: true)
  _$$PasswordChangedCopyWith<_$PasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SubmitSignInFormCopyWith<$Res> {
  factory _$$SubmitSignInFormCopyWith(
          _$SubmitSignInForm value, $Res Function(_$SubmitSignInForm) then) =
      __$$SubmitSignInFormCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SubmitSignInFormCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res, _$SubmitSignInForm>
    implements _$$SubmitSignInFormCopyWith<$Res> {
  __$$SubmitSignInFormCopyWithImpl(
      _$SubmitSignInForm _value, $Res Function(_$SubmitSignInForm) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SubmitSignInForm implements SubmitSignInForm {
  const _$SubmitSignInForm();

  @override
  String toString() {
    return 'SignInEvent.submitSignInForm()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SubmitSignInForm);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() signUp,
    required TResult Function() toForgotPassword,
    required TResult Function() enterTheApp,
    required TResult Function() backToSignIn,
    required TResult Function() backToSignUpSignInChoice,
    required TResult Function(String value) emailChanged,
    required TResult Function(String value) passwordChanged,
    required TResult Function() submitSignInForm,
  }) {
    return submitSignInForm();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? signUp,
    TResult? Function()? toForgotPassword,
    TResult? Function()? enterTheApp,
    TResult? Function()? backToSignIn,
    TResult? Function()? backToSignUpSignInChoice,
    TResult? Function(String value)? emailChanged,
    TResult? Function(String value)? passwordChanged,
    TResult? Function()? submitSignInForm,
  }) {
    return submitSignInForm?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? signUp,
    TResult Function()? toForgotPassword,
    TResult Function()? enterTheApp,
    TResult Function()? backToSignIn,
    TResult Function()? backToSignUpSignInChoice,
    TResult Function(String value)? emailChanged,
    TResult Function(String value)? passwordChanged,
    TResult Function()? submitSignInForm,
    required TResult orElse(),
  }) {
    if (submitSignInForm != null) {
      return submitSignInForm();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(SignUp value) signUp,
    required TResult Function(ToForgotPassword value) toForgotPassword,
    required TResult Function(EnterTheApp value) enterTheApp,
    required TResult Function(BackToSignIn value) backToSignIn,
    required TResult Function(BackToSignUpSignInChoice value)
        backToSignUpSignInChoice,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(SubmitSignInForm value) submitSignInForm,
  }) {
    return submitSignInForm(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(SignUp value)? signUp,
    TResult? Function(ToForgotPassword value)? toForgotPassword,
    TResult? Function(EnterTheApp value)? enterTheApp,
    TResult? Function(BackToSignIn value)? backToSignIn,
    TResult? Function(BackToSignUpSignInChoice value)? backToSignUpSignInChoice,
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(SubmitSignInForm value)? submitSignInForm,
  }) {
    return submitSignInForm?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(SignUp value)? signUp,
    TResult Function(ToForgotPassword value)? toForgotPassword,
    TResult Function(EnterTheApp value)? enterTheApp,
    TResult Function(BackToSignIn value)? backToSignIn,
    TResult Function(BackToSignUpSignInChoice value)? backToSignUpSignInChoice,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SubmitSignInForm value)? submitSignInForm,
    required TResult orElse(),
  }) {
    if (submitSignInForm != null) {
      return submitSignInForm(this);
    }
    return orElse();
  }
}

abstract class SubmitSignInForm implements SignInEvent {
  const factory SubmitSignInForm() = _$SubmitSignInForm;
}

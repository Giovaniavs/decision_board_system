// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'decision_board_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DecisionBoardState {
  DecisionBoardFlow get flow => throw _privateConstructorUsedError;
  List<String> get listLocations => throw _privateConstructorUsedError;
  List<String> get listDates => throw _privateConstructorUsedError;
  List<String> get listStatus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DecisionBoardStateCopyWith<DecisionBoardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DecisionBoardStateCopyWith<$Res> {
  factory $DecisionBoardStateCopyWith(
          DecisionBoardState value, $Res Function(DecisionBoardState) then) =
      _$DecisionBoardStateCopyWithImpl<$Res, DecisionBoardState>;
  @useResult
  $Res call(
      {DecisionBoardFlow flow,
      List<String> listLocations,
      List<String> listDates,
      List<String> listStatus});

  $DecisionBoardFlowCopyWith<$Res> get flow;
}

/// @nodoc
class _$DecisionBoardStateCopyWithImpl<$Res, $Val extends DecisionBoardState>
    implements $DecisionBoardStateCopyWith<$Res> {
  _$DecisionBoardStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flow = null,
    Object? listLocations = null,
    Object? listDates = null,
    Object? listStatus = null,
  }) {
    return _then(_value.copyWith(
      flow: null == flow
          ? _value.flow
          : flow // ignore: cast_nullable_to_non_nullable
              as DecisionBoardFlow,
      listLocations: null == listLocations
          ? _value.listLocations
          : listLocations // ignore: cast_nullable_to_non_nullable
              as List<String>,
      listDates: null == listDates
          ? _value.listDates
          : listDates // ignore: cast_nullable_to_non_nullable
              as List<String>,
      listStatus: null == listStatus
          ? _value.listStatus
          : listStatus // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DecisionBoardFlowCopyWith<$Res> get flow {
    return $DecisionBoardFlowCopyWith<$Res>(_value.flow, (value) {
      return _then(_value.copyWith(flow: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DecisionBoardStateCopyWith<$Res>
    implements $DecisionBoardStateCopyWith<$Res> {
  factory _$$_DecisionBoardStateCopyWith(_$_DecisionBoardState value,
          $Res Function(_$_DecisionBoardState) then) =
      __$$_DecisionBoardStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DecisionBoardFlow flow,
      List<String> listLocations,
      List<String> listDates,
      List<String> listStatus});

  @override
  $DecisionBoardFlowCopyWith<$Res> get flow;
}

/// @nodoc
class __$$_DecisionBoardStateCopyWithImpl<$Res>
    extends _$DecisionBoardStateCopyWithImpl<$Res, _$_DecisionBoardState>
    implements _$$_DecisionBoardStateCopyWith<$Res> {
  __$$_DecisionBoardStateCopyWithImpl(
      _$_DecisionBoardState _value, $Res Function(_$_DecisionBoardState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flow = null,
    Object? listLocations = null,
    Object? listDates = null,
    Object? listStatus = null,
  }) {
    return _then(_$_DecisionBoardState(
      flow: null == flow
          ? _value.flow
          : flow // ignore: cast_nullable_to_non_nullable
              as DecisionBoardFlow,
      listLocations: null == listLocations
          ? _value._listLocations
          : listLocations // ignore: cast_nullable_to_non_nullable
              as List<String>,
      listDates: null == listDates
          ? _value._listDates
          : listDates // ignore: cast_nullable_to_non_nullable
              as List<String>,
      listStatus: null == listStatus
          ? _value._listStatus
          : listStatus // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_DecisionBoardState implements _DecisionBoardState {
  const _$_DecisionBoardState(
      {required this.flow,
      required final List<String> listLocations,
      required final List<String> listDates,
      required final List<String> listStatus})
      : _listLocations = listLocations,
        _listDates = listDates,
        _listStatus = listStatus;

  @override
  final DecisionBoardFlow flow;
  final List<String> _listLocations;
  @override
  List<String> get listLocations {
    if (_listLocations is EqualUnmodifiableListView) return _listLocations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listLocations);
  }

  final List<String> _listDates;
  @override
  List<String> get listDates {
    if (_listDates is EqualUnmodifiableListView) return _listDates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listDates);
  }

  final List<String> _listStatus;
  @override
  List<String> get listStatus {
    if (_listStatus is EqualUnmodifiableListView) return _listStatus;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listStatus);
  }

  @override
  String toString() {
    return 'DecisionBoardState(flow: $flow, listLocations: $listLocations, listDates: $listDates, listStatus: $listStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DecisionBoardState &&
            (identical(other.flow, flow) || other.flow == flow) &&
            const DeepCollectionEquality()
                .equals(other._listLocations, _listLocations) &&
            const DeepCollectionEquality()
                .equals(other._listDates, _listDates) &&
            const DeepCollectionEquality()
                .equals(other._listStatus, _listStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      flow,
      const DeepCollectionEquality().hash(_listLocations),
      const DeepCollectionEquality().hash(_listDates),
      const DeepCollectionEquality().hash(_listStatus));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DecisionBoardStateCopyWith<_$_DecisionBoardState> get copyWith =>
      __$$_DecisionBoardStateCopyWithImpl<_$_DecisionBoardState>(
          this, _$identity);
}

abstract class _DecisionBoardState implements DecisionBoardState {
  const factory _DecisionBoardState(
      {required final DecisionBoardFlow flow,
      required final List<String> listLocations,
      required final List<String> listDates,
      required final List<String> listStatus}) = _$_DecisionBoardState;

  @override
  DecisionBoardFlow get flow;
  @override
  List<String> get listLocations;
  @override
  List<String> get listDates;
  @override
  List<String> get listStatus;
  @override
  @JsonKey(ignore: true)
  _$$_DecisionBoardStateCopyWith<_$_DecisionBoardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DecisionBoardFlow {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() splash,
    required TResult Function() loginOrRegistermentScreen,
    required TResult Function() signInScreen,
    required TResult Function() signUpScreen,
    required TResult Function() chartScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? splash,
    TResult? Function()? loginOrRegistermentScreen,
    TResult? Function()? signInScreen,
    TResult? Function()? signUpScreen,
    TResult? Function()? chartScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? splash,
    TResult Function()? loginOrRegistermentScreen,
    TResult Function()? signInScreen,
    TResult Function()? signUpScreen,
    TResult Function()? chartScreen,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Splash value) splash,
    required TResult Function(LoginOrRegistermentScreen value)
        loginOrRegistermentScreen,
    required TResult Function(SignInScreen value) signInScreen,
    required TResult Function(SignUpScreen value) signUpScreen,
    required TResult Function(ChartScreen value) chartScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Splash value)? splash,
    TResult? Function(LoginOrRegistermentScreen value)?
        loginOrRegistermentScreen,
    TResult? Function(SignInScreen value)? signInScreen,
    TResult? Function(SignUpScreen value)? signUpScreen,
    TResult? Function(ChartScreen value)? chartScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Splash value)? splash,
    TResult Function(LoginOrRegistermentScreen value)?
        loginOrRegistermentScreen,
    TResult Function(SignInScreen value)? signInScreen,
    TResult Function(SignUpScreen value)? signUpScreen,
    TResult Function(ChartScreen value)? chartScreen,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DecisionBoardFlowCopyWith<$Res> {
  factory $DecisionBoardFlowCopyWith(
          DecisionBoardFlow value, $Res Function(DecisionBoardFlow) then) =
      _$DecisionBoardFlowCopyWithImpl<$Res, DecisionBoardFlow>;
}

/// @nodoc
class _$DecisionBoardFlowCopyWithImpl<$Res, $Val extends DecisionBoardFlow>
    implements $DecisionBoardFlowCopyWith<$Res> {
  _$DecisionBoardFlowCopyWithImpl(this._value, this._then);

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
    extends _$DecisionBoardFlowCopyWithImpl<$Res, _$Splash>
    implements _$$SplashCopyWith<$Res> {
  __$$SplashCopyWithImpl(_$Splash _value, $Res Function(_$Splash) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Splash implements Splash {
  const _$Splash();

  @override
  String toString() {
    return 'DecisionBoardFlow.splash()';
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
    required TResult Function() signInScreen,
    required TResult Function() signUpScreen,
    required TResult Function() chartScreen,
  }) {
    return splash();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? splash,
    TResult? Function()? loginOrRegistermentScreen,
    TResult? Function()? signInScreen,
    TResult? Function()? signUpScreen,
    TResult? Function()? chartScreen,
  }) {
    return splash?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? splash,
    TResult Function()? loginOrRegistermentScreen,
    TResult Function()? signInScreen,
    TResult Function()? signUpScreen,
    TResult Function()? chartScreen,
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
    required TResult Function(SignInScreen value) signInScreen,
    required TResult Function(SignUpScreen value) signUpScreen,
    required TResult Function(ChartScreen value) chartScreen,
  }) {
    return splash(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Splash value)? splash,
    TResult? Function(LoginOrRegistermentScreen value)?
        loginOrRegistermentScreen,
    TResult? Function(SignInScreen value)? signInScreen,
    TResult? Function(SignUpScreen value)? signUpScreen,
    TResult? Function(ChartScreen value)? chartScreen,
  }) {
    return splash?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Splash value)? splash,
    TResult Function(LoginOrRegistermentScreen value)?
        loginOrRegistermentScreen,
    TResult Function(SignInScreen value)? signInScreen,
    TResult Function(SignUpScreen value)? signUpScreen,
    TResult Function(ChartScreen value)? chartScreen,
    required TResult orElse(),
  }) {
    if (splash != null) {
      return splash(this);
    }
    return orElse();
  }
}

abstract class Splash implements DecisionBoardFlow {
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
    extends _$DecisionBoardFlowCopyWithImpl<$Res, _$LoginOrRegistermentScreen>
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
    return 'DecisionBoardFlow.loginOrRegistermentScreen()';
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
    required TResult Function() signInScreen,
    required TResult Function() signUpScreen,
    required TResult Function() chartScreen,
  }) {
    return loginOrRegistermentScreen();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? splash,
    TResult? Function()? loginOrRegistermentScreen,
    TResult? Function()? signInScreen,
    TResult? Function()? signUpScreen,
    TResult? Function()? chartScreen,
  }) {
    return loginOrRegistermentScreen?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? splash,
    TResult Function()? loginOrRegistermentScreen,
    TResult Function()? signInScreen,
    TResult Function()? signUpScreen,
    TResult Function()? chartScreen,
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
    required TResult Function(SignInScreen value) signInScreen,
    required TResult Function(SignUpScreen value) signUpScreen,
    required TResult Function(ChartScreen value) chartScreen,
  }) {
    return loginOrRegistermentScreen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Splash value)? splash,
    TResult? Function(LoginOrRegistermentScreen value)?
        loginOrRegistermentScreen,
    TResult? Function(SignInScreen value)? signInScreen,
    TResult? Function(SignUpScreen value)? signUpScreen,
    TResult? Function(ChartScreen value)? chartScreen,
  }) {
    return loginOrRegistermentScreen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Splash value)? splash,
    TResult Function(LoginOrRegistermentScreen value)?
        loginOrRegistermentScreen,
    TResult Function(SignInScreen value)? signInScreen,
    TResult Function(SignUpScreen value)? signUpScreen,
    TResult Function(ChartScreen value)? chartScreen,
    required TResult orElse(),
  }) {
    if (loginOrRegistermentScreen != null) {
      return loginOrRegistermentScreen(this);
    }
    return orElse();
  }
}

abstract class LoginOrRegistermentScreen implements DecisionBoardFlow {
  const factory LoginOrRegistermentScreen() = _$LoginOrRegistermentScreen;
}

/// @nodoc
abstract class _$$SignInScreenCopyWith<$Res> {
  factory _$$SignInScreenCopyWith(
          _$SignInScreen value, $Res Function(_$SignInScreen) then) =
      __$$SignInScreenCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignInScreenCopyWithImpl<$Res>
    extends _$DecisionBoardFlowCopyWithImpl<$Res, _$SignInScreen>
    implements _$$SignInScreenCopyWith<$Res> {
  __$$SignInScreenCopyWithImpl(
      _$SignInScreen _value, $Res Function(_$SignInScreen) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignInScreen implements SignInScreen {
  const _$SignInScreen();

  @override
  String toString() {
    return 'DecisionBoardFlow.signInScreen()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignInScreen);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() splash,
    required TResult Function() loginOrRegistermentScreen,
    required TResult Function() signInScreen,
    required TResult Function() signUpScreen,
    required TResult Function() chartScreen,
  }) {
    return signInScreen();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? splash,
    TResult? Function()? loginOrRegistermentScreen,
    TResult? Function()? signInScreen,
    TResult? Function()? signUpScreen,
    TResult? Function()? chartScreen,
  }) {
    return signInScreen?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? splash,
    TResult Function()? loginOrRegistermentScreen,
    TResult Function()? signInScreen,
    TResult Function()? signUpScreen,
    TResult Function()? chartScreen,
    required TResult orElse(),
  }) {
    if (signInScreen != null) {
      return signInScreen();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Splash value) splash,
    required TResult Function(LoginOrRegistermentScreen value)
        loginOrRegistermentScreen,
    required TResult Function(SignInScreen value) signInScreen,
    required TResult Function(SignUpScreen value) signUpScreen,
    required TResult Function(ChartScreen value) chartScreen,
  }) {
    return signInScreen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Splash value)? splash,
    TResult? Function(LoginOrRegistermentScreen value)?
        loginOrRegistermentScreen,
    TResult? Function(SignInScreen value)? signInScreen,
    TResult? Function(SignUpScreen value)? signUpScreen,
    TResult? Function(ChartScreen value)? chartScreen,
  }) {
    return signInScreen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Splash value)? splash,
    TResult Function(LoginOrRegistermentScreen value)?
        loginOrRegistermentScreen,
    TResult Function(SignInScreen value)? signInScreen,
    TResult Function(SignUpScreen value)? signUpScreen,
    TResult Function(ChartScreen value)? chartScreen,
    required TResult orElse(),
  }) {
    if (signInScreen != null) {
      return signInScreen(this);
    }
    return orElse();
  }
}

abstract class SignInScreen implements DecisionBoardFlow {
  const factory SignInScreen() = _$SignInScreen;
}

/// @nodoc
abstract class _$$SignUpScreenCopyWith<$Res> {
  factory _$$SignUpScreenCopyWith(
          _$SignUpScreen value, $Res Function(_$SignUpScreen) then) =
      __$$SignUpScreenCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignUpScreenCopyWithImpl<$Res>
    extends _$DecisionBoardFlowCopyWithImpl<$Res, _$SignUpScreen>
    implements _$$SignUpScreenCopyWith<$Res> {
  __$$SignUpScreenCopyWithImpl(
      _$SignUpScreen _value, $Res Function(_$SignUpScreen) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignUpScreen implements SignUpScreen {
  const _$SignUpScreen();

  @override
  String toString() {
    return 'DecisionBoardFlow.signUpScreen()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignUpScreen);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() splash,
    required TResult Function() loginOrRegistermentScreen,
    required TResult Function() signInScreen,
    required TResult Function() signUpScreen,
    required TResult Function() chartScreen,
  }) {
    return signUpScreen();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? splash,
    TResult? Function()? loginOrRegistermentScreen,
    TResult? Function()? signInScreen,
    TResult? Function()? signUpScreen,
    TResult? Function()? chartScreen,
  }) {
    return signUpScreen?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? splash,
    TResult Function()? loginOrRegistermentScreen,
    TResult Function()? signInScreen,
    TResult Function()? signUpScreen,
    TResult Function()? chartScreen,
    required TResult orElse(),
  }) {
    if (signUpScreen != null) {
      return signUpScreen();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Splash value) splash,
    required TResult Function(LoginOrRegistermentScreen value)
        loginOrRegistermentScreen,
    required TResult Function(SignInScreen value) signInScreen,
    required TResult Function(SignUpScreen value) signUpScreen,
    required TResult Function(ChartScreen value) chartScreen,
  }) {
    return signUpScreen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Splash value)? splash,
    TResult? Function(LoginOrRegistermentScreen value)?
        loginOrRegistermentScreen,
    TResult? Function(SignInScreen value)? signInScreen,
    TResult? Function(SignUpScreen value)? signUpScreen,
    TResult? Function(ChartScreen value)? chartScreen,
  }) {
    return signUpScreen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Splash value)? splash,
    TResult Function(LoginOrRegistermentScreen value)?
        loginOrRegistermentScreen,
    TResult Function(SignInScreen value)? signInScreen,
    TResult Function(SignUpScreen value)? signUpScreen,
    TResult Function(ChartScreen value)? chartScreen,
    required TResult orElse(),
  }) {
    if (signUpScreen != null) {
      return signUpScreen(this);
    }
    return orElse();
  }
}

abstract class SignUpScreen implements DecisionBoardFlow {
  const factory SignUpScreen() = _$SignUpScreen;
}

/// @nodoc
abstract class _$$ChartScreenCopyWith<$Res> {
  factory _$$ChartScreenCopyWith(
          _$ChartScreen value, $Res Function(_$ChartScreen) then) =
      __$$ChartScreenCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChartScreenCopyWithImpl<$Res>
    extends _$DecisionBoardFlowCopyWithImpl<$Res, _$ChartScreen>
    implements _$$ChartScreenCopyWith<$Res> {
  __$$ChartScreenCopyWithImpl(
      _$ChartScreen _value, $Res Function(_$ChartScreen) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ChartScreen implements ChartScreen {
  const _$ChartScreen();

  @override
  String toString() {
    return 'DecisionBoardFlow.chartScreen()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ChartScreen);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() splash,
    required TResult Function() loginOrRegistermentScreen,
    required TResult Function() signInScreen,
    required TResult Function() signUpScreen,
    required TResult Function() chartScreen,
  }) {
    return chartScreen();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? splash,
    TResult? Function()? loginOrRegistermentScreen,
    TResult? Function()? signInScreen,
    TResult? Function()? signUpScreen,
    TResult? Function()? chartScreen,
  }) {
    return chartScreen?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? splash,
    TResult Function()? loginOrRegistermentScreen,
    TResult Function()? signInScreen,
    TResult Function()? signUpScreen,
    TResult Function()? chartScreen,
    required TResult orElse(),
  }) {
    if (chartScreen != null) {
      return chartScreen();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Splash value) splash,
    required TResult Function(LoginOrRegistermentScreen value)
        loginOrRegistermentScreen,
    required TResult Function(SignInScreen value) signInScreen,
    required TResult Function(SignUpScreen value) signUpScreen,
    required TResult Function(ChartScreen value) chartScreen,
  }) {
    return chartScreen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Splash value)? splash,
    TResult? Function(LoginOrRegistermentScreen value)?
        loginOrRegistermentScreen,
    TResult? Function(SignInScreen value)? signInScreen,
    TResult? Function(SignUpScreen value)? signUpScreen,
    TResult? Function(ChartScreen value)? chartScreen,
  }) {
    return chartScreen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Splash value)? splash,
    TResult Function(LoginOrRegistermentScreen value)?
        loginOrRegistermentScreen,
    TResult Function(SignInScreen value)? signInScreen,
    TResult Function(SignUpScreen value)? signUpScreen,
    TResult Function(ChartScreen value)? chartScreen,
    required TResult orElse(),
  }) {
    if (chartScreen != null) {
      return chartScreen(this);
    }
    return orElse();
  }
}

abstract class ChartScreen implements DecisionBoardFlow {
  const factory ChartScreen() = _$ChartScreen;
}

/// @nodoc
mixin _$DecisionBoardEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() toLoginOrRegistermentScreen,
    required TResult Function() backToInitialScreen,
    required TResult Function() signIn,
    required TResult Function() signUp,
    required TResult Function(List<String> data) storeGraphData,
    required TResult Function(List<List<dynamic>> data) goToChartsScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? toLoginOrRegistermentScreen,
    TResult? Function()? backToInitialScreen,
    TResult? Function()? signIn,
    TResult? Function()? signUp,
    TResult? Function(List<String> data)? storeGraphData,
    TResult? Function(List<List<dynamic>> data)? goToChartsScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? toLoginOrRegistermentScreen,
    TResult Function()? backToInitialScreen,
    TResult Function()? signIn,
    TResult Function()? signUp,
    TResult Function(List<String> data)? storeGraphData,
    TResult Function(List<List<dynamic>> data)? goToChartsScreen,
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
    required TResult Function(StoreGraphData value) storeGraphData,
    required TResult Function(GoToChartsScreen value) goToChartsScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ToLoginOrRegistermentScreen value)?
        toLoginOrRegistermentScreen,
    TResult? Function(BackToInitialScreen value)? backToInitialScreen,
    TResult? Function(SignIn value)? signIn,
    TResult? Function(SignUp value)? signUp,
    TResult? Function(StoreGraphData value)? storeGraphData,
    TResult? Function(GoToChartsScreen value)? goToChartsScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ToLoginOrRegistermentScreen value)?
        toLoginOrRegistermentScreen,
    TResult Function(BackToInitialScreen value)? backToInitialScreen,
    TResult Function(SignIn value)? signIn,
    TResult Function(SignUp value)? signUp,
    TResult Function(StoreGraphData value)? storeGraphData,
    TResult Function(GoToChartsScreen value)? goToChartsScreen,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DecisionBoardEventCopyWith<$Res> {
  factory $DecisionBoardEventCopyWith(
          DecisionBoardEvent value, $Res Function(DecisionBoardEvent) then) =
      _$DecisionBoardEventCopyWithImpl<$Res, DecisionBoardEvent>;
}

/// @nodoc
class _$DecisionBoardEventCopyWithImpl<$Res, $Val extends DecisionBoardEvent>
    implements $DecisionBoardEventCopyWith<$Res> {
  _$DecisionBoardEventCopyWithImpl(this._value, this._then);

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
    extends _$DecisionBoardEventCopyWithImpl<$Res,
        _$ToLoginOrRegistermentScreen>
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
    return 'DecisionBoardEvent.toLoginOrRegistermentScreen()';
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
    required TResult Function(List<String> data) storeGraphData,
    required TResult Function(List<List<dynamic>> data) goToChartsScreen,
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
    TResult? Function(List<String> data)? storeGraphData,
    TResult? Function(List<List<dynamic>> data)? goToChartsScreen,
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
    TResult Function(List<String> data)? storeGraphData,
    TResult Function(List<List<dynamic>> data)? goToChartsScreen,
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
    required TResult Function(StoreGraphData value) storeGraphData,
    required TResult Function(GoToChartsScreen value) goToChartsScreen,
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
    TResult? Function(StoreGraphData value)? storeGraphData,
    TResult? Function(GoToChartsScreen value)? goToChartsScreen,
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
    TResult Function(StoreGraphData value)? storeGraphData,
    TResult Function(GoToChartsScreen value)? goToChartsScreen,
    required TResult orElse(),
  }) {
    if (toLoginOrRegistermentScreen != null) {
      return toLoginOrRegistermentScreen(this);
    }
    return orElse();
  }
}

abstract class ToLoginOrRegistermentScreen implements DecisionBoardEvent {
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
    extends _$DecisionBoardEventCopyWithImpl<$Res, _$BackToInitialScreen>
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
    return 'DecisionBoardEvent.backToInitialScreen()';
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
    required TResult Function(List<String> data) storeGraphData,
    required TResult Function(List<List<dynamic>> data) goToChartsScreen,
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
    TResult? Function(List<String> data)? storeGraphData,
    TResult? Function(List<List<dynamic>> data)? goToChartsScreen,
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
    TResult Function(List<String> data)? storeGraphData,
    TResult Function(List<List<dynamic>> data)? goToChartsScreen,
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
    required TResult Function(StoreGraphData value) storeGraphData,
    required TResult Function(GoToChartsScreen value) goToChartsScreen,
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
    TResult? Function(StoreGraphData value)? storeGraphData,
    TResult? Function(GoToChartsScreen value)? goToChartsScreen,
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
    TResult Function(StoreGraphData value)? storeGraphData,
    TResult Function(GoToChartsScreen value)? goToChartsScreen,
    required TResult orElse(),
  }) {
    if (backToInitialScreen != null) {
      return backToInitialScreen(this);
    }
    return orElse();
  }
}

abstract class BackToInitialScreen implements DecisionBoardEvent {
  const factory BackToInitialScreen() = _$BackToInitialScreen;
}

/// @nodoc
abstract class _$$SignInCopyWith<$Res> {
  factory _$$SignInCopyWith(_$SignIn value, $Res Function(_$SignIn) then) =
      __$$SignInCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignInCopyWithImpl<$Res>
    extends _$DecisionBoardEventCopyWithImpl<$Res, _$SignIn>
    implements _$$SignInCopyWith<$Res> {
  __$$SignInCopyWithImpl(_$SignIn _value, $Res Function(_$SignIn) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignIn implements SignIn {
  const _$SignIn();

  @override
  String toString() {
    return 'DecisionBoardEvent.signIn()';
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
    required TResult Function(List<String> data) storeGraphData,
    required TResult Function(List<List<dynamic>> data) goToChartsScreen,
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
    TResult? Function(List<String> data)? storeGraphData,
    TResult? Function(List<List<dynamic>> data)? goToChartsScreen,
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
    TResult Function(List<String> data)? storeGraphData,
    TResult Function(List<List<dynamic>> data)? goToChartsScreen,
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
    required TResult Function(StoreGraphData value) storeGraphData,
    required TResult Function(GoToChartsScreen value) goToChartsScreen,
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
    TResult? Function(StoreGraphData value)? storeGraphData,
    TResult? Function(GoToChartsScreen value)? goToChartsScreen,
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
    TResult Function(StoreGraphData value)? storeGraphData,
    TResult Function(GoToChartsScreen value)? goToChartsScreen,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(this);
    }
    return orElse();
  }
}

abstract class SignIn implements DecisionBoardEvent {
  const factory SignIn() = _$SignIn;
}

/// @nodoc
abstract class _$$SignUpCopyWith<$Res> {
  factory _$$SignUpCopyWith(_$SignUp value, $Res Function(_$SignUp) then) =
      __$$SignUpCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignUpCopyWithImpl<$Res>
    extends _$DecisionBoardEventCopyWithImpl<$Res, _$SignUp>
    implements _$$SignUpCopyWith<$Res> {
  __$$SignUpCopyWithImpl(_$SignUp _value, $Res Function(_$SignUp) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignUp implements SignUp {
  const _$SignUp();

  @override
  String toString() {
    return 'DecisionBoardEvent.signUp()';
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
    required TResult Function(List<String> data) storeGraphData,
    required TResult Function(List<List<dynamic>> data) goToChartsScreen,
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
    TResult? Function(List<String> data)? storeGraphData,
    TResult? Function(List<List<dynamic>> data)? goToChartsScreen,
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
    TResult Function(List<String> data)? storeGraphData,
    TResult Function(List<List<dynamic>> data)? goToChartsScreen,
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
    required TResult Function(StoreGraphData value) storeGraphData,
    required TResult Function(GoToChartsScreen value) goToChartsScreen,
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
    TResult? Function(StoreGraphData value)? storeGraphData,
    TResult? Function(GoToChartsScreen value)? goToChartsScreen,
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
    TResult Function(StoreGraphData value)? storeGraphData,
    TResult Function(GoToChartsScreen value)? goToChartsScreen,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(this);
    }
    return orElse();
  }
}

abstract class SignUp implements DecisionBoardEvent {
  const factory SignUp() = _$SignUp;
}

/// @nodoc
abstract class _$$StoreGraphDataCopyWith<$Res> {
  factory _$$StoreGraphDataCopyWith(
          _$StoreGraphData value, $Res Function(_$StoreGraphData) then) =
      __$$StoreGraphDataCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> data});
}

/// @nodoc
class __$$StoreGraphDataCopyWithImpl<$Res>
    extends _$DecisionBoardEventCopyWithImpl<$Res, _$StoreGraphData>
    implements _$$StoreGraphDataCopyWith<$Res> {
  __$$StoreGraphDataCopyWithImpl(
      _$StoreGraphData _value, $Res Function(_$StoreGraphData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$StoreGraphData(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$StoreGraphData implements StoreGraphData {
  const _$StoreGraphData({required final List<String> data}) : _data = data;

  final List<String> _data;
  @override
  List<String> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'DecisionBoardEvent.storeGraphData(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoreGraphData &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StoreGraphDataCopyWith<_$StoreGraphData> get copyWith =>
      __$$StoreGraphDataCopyWithImpl<_$StoreGraphData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() toLoginOrRegistermentScreen,
    required TResult Function() backToInitialScreen,
    required TResult Function() signIn,
    required TResult Function() signUp,
    required TResult Function(List<String> data) storeGraphData,
    required TResult Function(List<List<dynamic>> data) goToChartsScreen,
  }) {
    return storeGraphData(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? toLoginOrRegistermentScreen,
    TResult? Function()? backToInitialScreen,
    TResult? Function()? signIn,
    TResult? Function()? signUp,
    TResult? Function(List<String> data)? storeGraphData,
    TResult? Function(List<List<dynamic>> data)? goToChartsScreen,
  }) {
    return storeGraphData?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? toLoginOrRegistermentScreen,
    TResult Function()? backToInitialScreen,
    TResult Function()? signIn,
    TResult Function()? signUp,
    TResult Function(List<String> data)? storeGraphData,
    TResult Function(List<List<dynamic>> data)? goToChartsScreen,
    required TResult orElse(),
  }) {
    if (storeGraphData != null) {
      return storeGraphData(data);
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
    required TResult Function(StoreGraphData value) storeGraphData,
    required TResult Function(GoToChartsScreen value) goToChartsScreen,
  }) {
    return storeGraphData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ToLoginOrRegistermentScreen value)?
        toLoginOrRegistermentScreen,
    TResult? Function(BackToInitialScreen value)? backToInitialScreen,
    TResult? Function(SignIn value)? signIn,
    TResult? Function(SignUp value)? signUp,
    TResult? Function(StoreGraphData value)? storeGraphData,
    TResult? Function(GoToChartsScreen value)? goToChartsScreen,
  }) {
    return storeGraphData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ToLoginOrRegistermentScreen value)?
        toLoginOrRegistermentScreen,
    TResult Function(BackToInitialScreen value)? backToInitialScreen,
    TResult Function(SignIn value)? signIn,
    TResult Function(SignUp value)? signUp,
    TResult Function(StoreGraphData value)? storeGraphData,
    TResult Function(GoToChartsScreen value)? goToChartsScreen,
    required TResult orElse(),
  }) {
    if (storeGraphData != null) {
      return storeGraphData(this);
    }
    return orElse();
  }
}

abstract class StoreGraphData implements DecisionBoardEvent {
  const factory StoreGraphData({required final List<String> data}) =
      _$StoreGraphData;

  List<String> get data;
  @JsonKey(ignore: true)
  _$$StoreGraphDataCopyWith<_$StoreGraphData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GoToChartsScreenCopyWith<$Res> {
  factory _$$GoToChartsScreenCopyWith(
          _$GoToChartsScreen value, $Res Function(_$GoToChartsScreen) then) =
      __$$GoToChartsScreenCopyWithImpl<$Res>;
  @useResult
  $Res call({List<List<dynamic>> data});
}

/// @nodoc
class __$$GoToChartsScreenCopyWithImpl<$Res>
    extends _$DecisionBoardEventCopyWithImpl<$Res, _$GoToChartsScreen>
    implements _$$GoToChartsScreenCopyWith<$Res> {
  __$$GoToChartsScreenCopyWithImpl(
      _$GoToChartsScreen _value, $Res Function(_$GoToChartsScreen) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$GoToChartsScreen(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<List<dynamic>>,
    ));
  }
}

/// @nodoc

class _$GoToChartsScreen implements GoToChartsScreen {
  const _$GoToChartsScreen({required final List<List<dynamic>> data})
      : _data = data;

  final List<List<dynamic>> _data;
  @override
  List<List<dynamic>> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'DecisionBoardEvent.goToChartsScreen(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoToChartsScreen &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GoToChartsScreenCopyWith<_$GoToChartsScreen> get copyWith =>
      __$$GoToChartsScreenCopyWithImpl<_$GoToChartsScreen>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() toLoginOrRegistermentScreen,
    required TResult Function() backToInitialScreen,
    required TResult Function() signIn,
    required TResult Function() signUp,
    required TResult Function(List<String> data) storeGraphData,
    required TResult Function(List<List<dynamic>> data) goToChartsScreen,
  }) {
    return goToChartsScreen(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? toLoginOrRegistermentScreen,
    TResult? Function()? backToInitialScreen,
    TResult? Function()? signIn,
    TResult? Function()? signUp,
    TResult? Function(List<String> data)? storeGraphData,
    TResult? Function(List<List<dynamic>> data)? goToChartsScreen,
  }) {
    return goToChartsScreen?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? toLoginOrRegistermentScreen,
    TResult Function()? backToInitialScreen,
    TResult Function()? signIn,
    TResult Function()? signUp,
    TResult Function(List<String> data)? storeGraphData,
    TResult Function(List<List<dynamic>> data)? goToChartsScreen,
    required TResult orElse(),
  }) {
    if (goToChartsScreen != null) {
      return goToChartsScreen(data);
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
    required TResult Function(StoreGraphData value) storeGraphData,
    required TResult Function(GoToChartsScreen value) goToChartsScreen,
  }) {
    return goToChartsScreen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ToLoginOrRegistermentScreen value)?
        toLoginOrRegistermentScreen,
    TResult? Function(BackToInitialScreen value)? backToInitialScreen,
    TResult? Function(SignIn value)? signIn,
    TResult? Function(SignUp value)? signUp,
    TResult? Function(StoreGraphData value)? storeGraphData,
    TResult? Function(GoToChartsScreen value)? goToChartsScreen,
  }) {
    return goToChartsScreen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ToLoginOrRegistermentScreen value)?
        toLoginOrRegistermentScreen,
    TResult Function(BackToInitialScreen value)? backToInitialScreen,
    TResult Function(SignIn value)? signIn,
    TResult Function(SignUp value)? signUp,
    TResult Function(StoreGraphData value)? storeGraphData,
    TResult Function(GoToChartsScreen value)? goToChartsScreen,
    required TResult orElse(),
  }) {
    if (goToChartsScreen != null) {
      return goToChartsScreen(this);
    }
    return orElse();
  }
}

abstract class GoToChartsScreen implements DecisionBoardEvent {
  const factory GoToChartsScreen({required final List<List<dynamic>> data}) =
      _$GoToChartsScreen;

  List<List<dynamic>> get data;
  @JsonKey(ignore: true)
  _$$GoToChartsScreenCopyWith<_$GoToChartsScreen> get copyWith =>
      throw _privateConstructorUsedError;
}

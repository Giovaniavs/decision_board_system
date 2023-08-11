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
  List<ComplaintModel> get complaintList => throw _privateConstructorUsedError;

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
  $Res call({DecisionBoardFlow flow, List<ComplaintModel> complaintList});

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
    Object? complaintList = null,
  }) {
    return _then(_value.copyWith(
      flow: null == flow
          ? _value.flow
          : flow // ignore: cast_nullable_to_non_nullable
              as DecisionBoardFlow,
      complaintList: null == complaintList
          ? _value.complaintList
          : complaintList // ignore: cast_nullable_to_non_nullable
              as List<ComplaintModel>,
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
  $Res call({DecisionBoardFlow flow, List<ComplaintModel> complaintList});

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
    Object? complaintList = null,
  }) {
    return _then(_$_DecisionBoardState(
      flow: null == flow
          ? _value.flow
          : flow // ignore: cast_nullable_to_non_nullable
              as DecisionBoardFlow,
      complaintList: null == complaintList
          ? _value._complaintList
          : complaintList // ignore: cast_nullable_to_non_nullable
              as List<ComplaintModel>,
    ));
  }
}

/// @nodoc

class _$_DecisionBoardState implements _DecisionBoardState {
  const _$_DecisionBoardState(
      {required this.flow, required final List<ComplaintModel> complaintList})
      : _complaintList = complaintList;

  @override
  final DecisionBoardFlow flow;
  final List<ComplaintModel> _complaintList;
  @override
  List<ComplaintModel> get complaintList {
    if (_complaintList is EqualUnmodifiableListView) return _complaintList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_complaintList);
  }

  @override
  String toString() {
    return 'DecisionBoardState(flow: $flow, complaintList: $complaintList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DecisionBoardState &&
            (identical(other.flow, flow) || other.flow == flow) &&
            const DeepCollectionEquality()
                .equals(other._complaintList, _complaintList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, flow, const DeepCollectionEquality().hash(_complaintList));

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
          required final List<ComplaintModel> complaintList}) =
      _$_DecisionBoardState;

  @override
  DecisionBoardFlow get flow;
  @override
  List<ComplaintModel> get complaintList;
  @override
  @JsonKey(ignore: true)
  _$$_DecisionBoardStateCopyWith<_$_DecisionBoardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DecisionBoardFlow {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() splashScreenFlow,
    required TResult Function() uploadDatabaseScreenFlow,
    required TResult Function() chartScreenFlow,
    required TResult Function() homeFlow,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? splashScreenFlow,
    TResult? Function()? uploadDatabaseScreenFlow,
    TResult? Function()? chartScreenFlow,
    TResult? Function()? homeFlow,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? splashScreenFlow,
    TResult Function()? uploadDatabaseScreenFlow,
    TResult Function()? chartScreenFlow,
    TResult Function()? homeFlow,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SplashScreenFlow value) splashScreenFlow,
    required TResult Function(UploadDatabaseScreenFlow value)
        uploadDatabaseScreenFlow,
    required TResult Function(ChartScreenFlow value) chartScreenFlow,
    required TResult Function(HomeFlow value) homeFlow,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SplashScreenFlow value)? splashScreenFlow,
    TResult? Function(UploadDatabaseScreenFlow value)? uploadDatabaseScreenFlow,
    TResult? Function(ChartScreenFlow value)? chartScreenFlow,
    TResult? Function(HomeFlow value)? homeFlow,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SplashScreenFlow value)? splashScreenFlow,
    TResult Function(UploadDatabaseScreenFlow value)? uploadDatabaseScreenFlow,
    TResult Function(ChartScreenFlow value)? chartScreenFlow,
    TResult Function(HomeFlow value)? homeFlow,
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
abstract class _$$SplashScreenFlowCopyWith<$Res> {
  factory _$$SplashScreenFlowCopyWith(
          _$SplashScreenFlow value, $Res Function(_$SplashScreenFlow) then) =
      __$$SplashScreenFlowCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SplashScreenFlowCopyWithImpl<$Res>
    extends _$DecisionBoardFlowCopyWithImpl<$Res, _$SplashScreenFlow>
    implements _$$SplashScreenFlowCopyWith<$Res> {
  __$$SplashScreenFlowCopyWithImpl(
      _$SplashScreenFlow _value, $Res Function(_$SplashScreenFlow) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SplashScreenFlow implements SplashScreenFlow {
  const _$SplashScreenFlow();

  @override
  String toString() {
    return 'DecisionBoardFlow.splashScreenFlow()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SplashScreenFlow);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() splashScreenFlow,
    required TResult Function() uploadDatabaseScreenFlow,
    required TResult Function() chartScreenFlow,
    required TResult Function() homeFlow,
  }) {
    return splashScreenFlow();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? splashScreenFlow,
    TResult? Function()? uploadDatabaseScreenFlow,
    TResult? Function()? chartScreenFlow,
    TResult? Function()? homeFlow,
  }) {
    return splashScreenFlow?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? splashScreenFlow,
    TResult Function()? uploadDatabaseScreenFlow,
    TResult Function()? chartScreenFlow,
    TResult Function()? homeFlow,
    required TResult orElse(),
  }) {
    if (splashScreenFlow != null) {
      return splashScreenFlow();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SplashScreenFlow value) splashScreenFlow,
    required TResult Function(UploadDatabaseScreenFlow value)
        uploadDatabaseScreenFlow,
    required TResult Function(ChartScreenFlow value) chartScreenFlow,
    required TResult Function(HomeFlow value) homeFlow,
  }) {
    return splashScreenFlow(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SplashScreenFlow value)? splashScreenFlow,
    TResult? Function(UploadDatabaseScreenFlow value)? uploadDatabaseScreenFlow,
    TResult? Function(ChartScreenFlow value)? chartScreenFlow,
    TResult? Function(HomeFlow value)? homeFlow,
  }) {
    return splashScreenFlow?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SplashScreenFlow value)? splashScreenFlow,
    TResult Function(UploadDatabaseScreenFlow value)? uploadDatabaseScreenFlow,
    TResult Function(ChartScreenFlow value)? chartScreenFlow,
    TResult Function(HomeFlow value)? homeFlow,
    required TResult orElse(),
  }) {
    if (splashScreenFlow != null) {
      return splashScreenFlow(this);
    }
    return orElse();
  }
}

abstract class SplashScreenFlow implements DecisionBoardFlow {
  const factory SplashScreenFlow() = _$SplashScreenFlow;
}

/// @nodoc
abstract class _$$UploadDatabaseScreenFlowCopyWith<$Res> {
  factory _$$UploadDatabaseScreenFlowCopyWith(_$UploadDatabaseScreenFlow value,
          $Res Function(_$UploadDatabaseScreenFlow) then) =
      __$$UploadDatabaseScreenFlowCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UploadDatabaseScreenFlowCopyWithImpl<$Res>
    extends _$DecisionBoardFlowCopyWithImpl<$Res, _$UploadDatabaseScreenFlow>
    implements _$$UploadDatabaseScreenFlowCopyWith<$Res> {
  __$$UploadDatabaseScreenFlowCopyWithImpl(_$UploadDatabaseScreenFlow _value,
      $Res Function(_$UploadDatabaseScreenFlow) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UploadDatabaseScreenFlow implements UploadDatabaseScreenFlow {
  const _$UploadDatabaseScreenFlow();

  @override
  String toString() {
    return 'DecisionBoardFlow.uploadDatabaseScreenFlow()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadDatabaseScreenFlow);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() splashScreenFlow,
    required TResult Function() uploadDatabaseScreenFlow,
    required TResult Function() chartScreenFlow,
    required TResult Function() homeFlow,
  }) {
    return uploadDatabaseScreenFlow();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? splashScreenFlow,
    TResult? Function()? uploadDatabaseScreenFlow,
    TResult? Function()? chartScreenFlow,
    TResult? Function()? homeFlow,
  }) {
    return uploadDatabaseScreenFlow?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? splashScreenFlow,
    TResult Function()? uploadDatabaseScreenFlow,
    TResult Function()? chartScreenFlow,
    TResult Function()? homeFlow,
    required TResult orElse(),
  }) {
    if (uploadDatabaseScreenFlow != null) {
      return uploadDatabaseScreenFlow();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SplashScreenFlow value) splashScreenFlow,
    required TResult Function(UploadDatabaseScreenFlow value)
        uploadDatabaseScreenFlow,
    required TResult Function(ChartScreenFlow value) chartScreenFlow,
    required TResult Function(HomeFlow value) homeFlow,
  }) {
    return uploadDatabaseScreenFlow(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SplashScreenFlow value)? splashScreenFlow,
    TResult? Function(UploadDatabaseScreenFlow value)? uploadDatabaseScreenFlow,
    TResult? Function(ChartScreenFlow value)? chartScreenFlow,
    TResult? Function(HomeFlow value)? homeFlow,
  }) {
    return uploadDatabaseScreenFlow?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SplashScreenFlow value)? splashScreenFlow,
    TResult Function(UploadDatabaseScreenFlow value)? uploadDatabaseScreenFlow,
    TResult Function(ChartScreenFlow value)? chartScreenFlow,
    TResult Function(HomeFlow value)? homeFlow,
    required TResult orElse(),
  }) {
    if (uploadDatabaseScreenFlow != null) {
      return uploadDatabaseScreenFlow(this);
    }
    return orElse();
  }
}

abstract class UploadDatabaseScreenFlow implements DecisionBoardFlow {
  const factory UploadDatabaseScreenFlow() = _$UploadDatabaseScreenFlow;
}

/// @nodoc
abstract class _$$ChartScreenFlowCopyWith<$Res> {
  factory _$$ChartScreenFlowCopyWith(
          _$ChartScreenFlow value, $Res Function(_$ChartScreenFlow) then) =
      __$$ChartScreenFlowCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChartScreenFlowCopyWithImpl<$Res>
    extends _$DecisionBoardFlowCopyWithImpl<$Res, _$ChartScreenFlow>
    implements _$$ChartScreenFlowCopyWith<$Res> {
  __$$ChartScreenFlowCopyWithImpl(
      _$ChartScreenFlow _value, $Res Function(_$ChartScreenFlow) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ChartScreenFlow implements ChartScreenFlow {
  const _$ChartScreenFlow();

  @override
  String toString() {
    return 'DecisionBoardFlow.chartScreenFlow()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ChartScreenFlow);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() splashScreenFlow,
    required TResult Function() uploadDatabaseScreenFlow,
    required TResult Function() chartScreenFlow,
    required TResult Function() homeFlow,
  }) {
    return chartScreenFlow();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? splashScreenFlow,
    TResult? Function()? uploadDatabaseScreenFlow,
    TResult? Function()? chartScreenFlow,
    TResult? Function()? homeFlow,
  }) {
    return chartScreenFlow?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? splashScreenFlow,
    TResult Function()? uploadDatabaseScreenFlow,
    TResult Function()? chartScreenFlow,
    TResult Function()? homeFlow,
    required TResult orElse(),
  }) {
    if (chartScreenFlow != null) {
      return chartScreenFlow();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SplashScreenFlow value) splashScreenFlow,
    required TResult Function(UploadDatabaseScreenFlow value)
        uploadDatabaseScreenFlow,
    required TResult Function(ChartScreenFlow value) chartScreenFlow,
    required TResult Function(HomeFlow value) homeFlow,
  }) {
    return chartScreenFlow(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SplashScreenFlow value)? splashScreenFlow,
    TResult? Function(UploadDatabaseScreenFlow value)? uploadDatabaseScreenFlow,
    TResult? Function(ChartScreenFlow value)? chartScreenFlow,
    TResult? Function(HomeFlow value)? homeFlow,
  }) {
    return chartScreenFlow?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SplashScreenFlow value)? splashScreenFlow,
    TResult Function(UploadDatabaseScreenFlow value)? uploadDatabaseScreenFlow,
    TResult Function(ChartScreenFlow value)? chartScreenFlow,
    TResult Function(HomeFlow value)? homeFlow,
    required TResult orElse(),
  }) {
    if (chartScreenFlow != null) {
      return chartScreenFlow(this);
    }
    return orElse();
  }
}

abstract class ChartScreenFlow implements DecisionBoardFlow {
  const factory ChartScreenFlow() = _$ChartScreenFlow;
}

/// @nodoc
abstract class _$$HomeFlowCopyWith<$Res> {
  factory _$$HomeFlowCopyWith(
          _$HomeFlow value, $Res Function(_$HomeFlow) then) =
      __$$HomeFlowCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeFlowCopyWithImpl<$Res>
    extends _$DecisionBoardFlowCopyWithImpl<$Res, _$HomeFlow>
    implements _$$HomeFlowCopyWith<$Res> {
  __$$HomeFlowCopyWithImpl(_$HomeFlow _value, $Res Function(_$HomeFlow) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HomeFlow implements HomeFlow {
  const _$HomeFlow();

  @override
  String toString() {
    return 'DecisionBoardFlow.homeFlow()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HomeFlow);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() splashScreenFlow,
    required TResult Function() uploadDatabaseScreenFlow,
    required TResult Function() chartScreenFlow,
    required TResult Function() homeFlow,
  }) {
    return homeFlow();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? splashScreenFlow,
    TResult? Function()? uploadDatabaseScreenFlow,
    TResult? Function()? chartScreenFlow,
    TResult? Function()? homeFlow,
  }) {
    return homeFlow?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? splashScreenFlow,
    TResult Function()? uploadDatabaseScreenFlow,
    TResult Function()? chartScreenFlow,
    TResult Function()? homeFlow,
    required TResult orElse(),
  }) {
    if (homeFlow != null) {
      return homeFlow();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SplashScreenFlow value) splashScreenFlow,
    required TResult Function(UploadDatabaseScreenFlow value)
        uploadDatabaseScreenFlow,
    required TResult Function(ChartScreenFlow value) chartScreenFlow,
    required TResult Function(HomeFlow value) homeFlow,
  }) {
    return homeFlow(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SplashScreenFlow value)? splashScreenFlow,
    TResult? Function(UploadDatabaseScreenFlow value)? uploadDatabaseScreenFlow,
    TResult? Function(ChartScreenFlow value)? chartScreenFlow,
    TResult? Function(HomeFlow value)? homeFlow,
  }) {
    return homeFlow?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SplashScreenFlow value)? splashScreenFlow,
    TResult Function(UploadDatabaseScreenFlow value)? uploadDatabaseScreenFlow,
    TResult Function(ChartScreenFlow value)? chartScreenFlow,
    TResult Function(HomeFlow value)? homeFlow,
    required TResult orElse(),
  }) {
    if (homeFlow != null) {
      return homeFlow(this);
    }
    return orElse();
  }
}

abstract class HomeFlow implements DecisionBoardFlow {
  const factory HomeFlow() = _$HomeFlow;
}

/// @nodoc
mixin _$DecisionBoardEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() goToUploadDataBaseScreen,
    required TResult Function(List<List<dynamic>> formatedData) goToHome,
    required TResult Function(List<List<dynamic>> data) goToChartsScreen,
    required TResult Function() goBackToUploadData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? goToUploadDataBaseScreen,
    TResult? Function(List<List<dynamic>> formatedData)? goToHome,
    TResult? Function(List<List<dynamic>> data)? goToChartsScreen,
    TResult? Function()? goBackToUploadData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? goToUploadDataBaseScreen,
    TResult Function(List<List<dynamic>> formatedData)? goToHome,
    TResult Function(List<List<dynamic>> data)? goToChartsScreen,
    TResult Function()? goBackToUploadData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GoToUploadDataBaseScreen value)
        goToUploadDataBaseScreen,
    required TResult Function(GoToHome value) goToHome,
    required TResult Function(GoToChartsScreen value) goToChartsScreen,
    required TResult Function(GoBackToUploadData value) goBackToUploadData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GoToUploadDataBaseScreen value)? goToUploadDataBaseScreen,
    TResult? Function(GoToHome value)? goToHome,
    TResult? Function(GoToChartsScreen value)? goToChartsScreen,
    TResult? Function(GoBackToUploadData value)? goBackToUploadData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GoToUploadDataBaseScreen value)? goToUploadDataBaseScreen,
    TResult Function(GoToHome value)? goToHome,
    TResult Function(GoToChartsScreen value)? goToChartsScreen,
    TResult Function(GoBackToUploadData value)? goBackToUploadData,
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
abstract class _$$GoToUploadDataBaseScreenCopyWith<$Res> {
  factory _$$GoToUploadDataBaseScreenCopyWith(_$GoToUploadDataBaseScreen value,
          $Res Function(_$GoToUploadDataBaseScreen) then) =
      __$$GoToUploadDataBaseScreenCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GoToUploadDataBaseScreenCopyWithImpl<$Res>
    extends _$DecisionBoardEventCopyWithImpl<$Res, _$GoToUploadDataBaseScreen>
    implements _$$GoToUploadDataBaseScreenCopyWith<$Res> {
  __$$GoToUploadDataBaseScreenCopyWithImpl(_$GoToUploadDataBaseScreen _value,
      $Res Function(_$GoToUploadDataBaseScreen) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GoToUploadDataBaseScreen implements GoToUploadDataBaseScreen {
  const _$GoToUploadDataBaseScreen();

  @override
  String toString() {
    return 'DecisionBoardEvent.goToUploadDataBaseScreen()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoToUploadDataBaseScreen);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() goToUploadDataBaseScreen,
    required TResult Function(List<List<dynamic>> formatedData) goToHome,
    required TResult Function(List<List<dynamic>> data) goToChartsScreen,
    required TResult Function() goBackToUploadData,
  }) {
    return goToUploadDataBaseScreen();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? goToUploadDataBaseScreen,
    TResult? Function(List<List<dynamic>> formatedData)? goToHome,
    TResult? Function(List<List<dynamic>> data)? goToChartsScreen,
    TResult? Function()? goBackToUploadData,
  }) {
    return goToUploadDataBaseScreen?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? goToUploadDataBaseScreen,
    TResult Function(List<List<dynamic>> formatedData)? goToHome,
    TResult Function(List<List<dynamic>> data)? goToChartsScreen,
    TResult Function()? goBackToUploadData,
    required TResult orElse(),
  }) {
    if (goToUploadDataBaseScreen != null) {
      return goToUploadDataBaseScreen();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GoToUploadDataBaseScreen value)
        goToUploadDataBaseScreen,
    required TResult Function(GoToHome value) goToHome,
    required TResult Function(GoToChartsScreen value) goToChartsScreen,
    required TResult Function(GoBackToUploadData value) goBackToUploadData,
  }) {
    return goToUploadDataBaseScreen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GoToUploadDataBaseScreen value)? goToUploadDataBaseScreen,
    TResult? Function(GoToHome value)? goToHome,
    TResult? Function(GoToChartsScreen value)? goToChartsScreen,
    TResult? Function(GoBackToUploadData value)? goBackToUploadData,
  }) {
    return goToUploadDataBaseScreen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GoToUploadDataBaseScreen value)? goToUploadDataBaseScreen,
    TResult Function(GoToHome value)? goToHome,
    TResult Function(GoToChartsScreen value)? goToChartsScreen,
    TResult Function(GoBackToUploadData value)? goBackToUploadData,
    required TResult orElse(),
  }) {
    if (goToUploadDataBaseScreen != null) {
      return goToUploadDataBaseScreen(this);
    }
    return orElse();
  }
}

abstract class GoToUploadDataBaseScreen implements DecisionBoardEvent {
  const factory GoToUploadDataBaseScreen() = _$GoToUploadDataBaseScreen;
}

/// @nodoc
abstract class _$$GoToHomeCopyWith<$Res> {
  factory _$$GoToHomeCopyWith(
          _$GoToHome value, $Res Function(_$GoToHome) then) =
      __$$GoToHomeCopyWithImpl<$Res>;
  @useResult
  $Res call({List<List<dynamic>> formatedData});
}

/// @nodoc
class __$$GoToHomeCopyWithImpl<$Res>
    extends _$DecisionBoardEventCopyWithImpl<$Res, _$GoToHome>
    implements _$$GoToHomeCopyWith<$Res> {
  __$$GoToHomeCopyWithImpl(_$GoToHome _value, $Res Function(_$GoToHome) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formatedData = null,
  }) {
    return _then(_$GoToHome(
      formatedData: null == formatedData
          ? _value._formatedData
          : formatedData // ignore: cast_nullable_to_non_nullable
              as List<List<dynamic>>,
    ));
  }
}

/// @nodoc

class _$GoToHome implements GoToHome {
  const _$GoToHome({required final List<List<dynamic>> formatedData})
      : _formatedData = formatedData;

  final List<List<dynamic>> _formatedData;
  @override
  List<List<dynamic>> get formatedData {
    if (_formatedData is EqualUnmodifiableListView) return _formatedData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_formatedData);
  }

  @override
  String toString() {
    return 'DecisionBoardEvent.goToHome(formatedData: $formatedData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoToHome &&
            const DeepCollectionEquality()
                .equals(other._formatedData, _formatedData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_formatedData));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GoToHomeCopyWith<_$GoToHome> get copyWith =>
      __$$GoToHomeCopyWithImpl<_$GoToHome>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() goToUploadDataBaseScreen,
    required TResult Function(List<List<dynamic>> formatedData) goToHome,
    required TResult Function(List<List<dynamic>> data) goToChartsScreen,
    required TResult Function() goBackToUploadData,
  }) {
    return goToHome(formatedData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? goToUploadDataBaseScreen,
    TResult? Function(List<List<dynamic>> formatedData)? goToHome,
    TResult? Function(List<List<dynamic>> data)? goToChartsScreen,
    TResult? Function()? goBackToUploadData,
  }) {
    return goToHome?.call(formatedData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? goToUploadDataBaseScreen,
    TResult Function(List<List<dynamic>> formatedData)? goToHome,
    TResult Function(List<List<dynamic>> data)? goToChartsScreen,
    TResult Function()? goBackToUploadData,
    required TResult orElse(),
  }) {
    if (goToHome != null) {
      return goToHome(formatedData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GoToUploadDataBaseScreen value)
        goToUploadDataBaseScreen,
    required TResult Function(GoToHome value) goToHome,
    required TResult Function(GoToChartsScreen value) goToChartsScreen,
    required TResult Function(GoBackToUploadData value) goBackToUploadData,
  }) {
    return goToHome(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GoToUploadDataBaseScreen value)? goToUploadDataBaseScreen,
    TResult? Function(GoToHome value)? goToHome,
    TResult? Function(GoToChartsScreen value)? goToChartsScreen,
    TResult? Function(GoBackToUploadData value)? goBackToUploadData,
  }) {
    return goToHome?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GoToUploadDataBaseScreen value)? goToUploadDataBaseScreen,
    TResult Function(GoToHome value)? goToHome,
    TResult Function(GoToChartsScreen value)? goToChartsScreen,
    TResult Function(GoBackToUploadData value)? goBackToUploadData,
    required TResult orElse(),
  }) {
    if (goToHome != null) {
      return goToHome(this);
    }
    return orElse();
  }
}

abstract class GoToHome implements DecisionBoardEvent {
  const factory GoToHome({required final List<List<dynamic>> formatedData}) =
      _$GoToHome;

  List<List<dynamic>> get formatedData;
  @JsonKey(ignore: true)
  _$$GoToHomeCopyWith<_$GoToHome> get copyWith =>
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
    required TResult Function() goToUploadDataBaseScreen,
    required TResult Function(List<List<dynamic>> formatedData) goToHome,
    required TResult Function(List<List<dynamic>> data) goToChartsScreen,
    required TResult Function() goBackToUploadData,
  }) {
    return goToChartsScreen(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? goToUploadDataBaseScreen,
    TResult? Function(List<List<dynamic>> formatedData)? goToHome,
    TResult? Function(List<List<dynamic>> data)? goToChartsScreen,
    TResult? Function()? goBackToUploadData,
  }) {
    return goToChartsScreen?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? goToUploadDataBaseScreen,
    TResult Function(List<List<dynamic>> formatedData)? goToHome,
    TResult Function(List<List<dynamic>> data)? goToChartsScreen,
    TResult Function()? goBackToUploadData,
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
    required TResult Function(GoToUploadDataBaseScreen value)
        goToUploadDataBaseScreen,
    required TResult Function(GoToHome value) goToHome,
    required TResult Function(GoToChartsScreen value) goToChartsScreen,
    required TResult Function(GoBackToUploadData value) goBackToUploadData,
  }) {
    return goToChartsScreen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GoToUploadDataBaseScreen value)? goToUploadDataBaseScreen,
    TResult? Function(GoToHome value)? goToHome,
    TResult? Function(GoToChartsScreen value)? goToChartsScreen,
    TResult? Function(GoBackToUploadData value)? goBackToUploadData,
  }) {
    return goToChartsScreen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GoToUploadDataBaseScreen value)? goToUploadDataBaseScreen,
    TResult Function(GoToHome value)? goToHome,
    TResult Function(GoToChartsScreen value)? goToChartsScreen,
    TResult Function(GoBackToUploadData value)? goBackToUploadData,
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

/// @nodoc
abstract class _$$GoBackToUploadDataCopyWith<$Res> {
  factory _$$GoBackToUploadDataCopyWith(_$GoBackToUploadData value,
          $Res Function(_$GoBackToUploadData) then) =
      __$$GoBackToUploadDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GoBackToUploadDataCopyWithImpl<$Res>
    extends _$DecisionBoardEventCopyWithImpl<$Res, _$GoBackToUploadData>
    implements _$$GoBackToUploadDataCopyWith<$Res> {
  __$$GoBackToUploadDataCopyWithImpl(
      _$GoBackToUploadData _value, $Res Function(_$GoBackToUploadData) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GoBackToUploadData implements GoBackToUploadData {
  const _$GoBackToUploadData();

  @override
  String toString() {
    return 'DecisionBoardEvent.goBackToUploadData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GoBackToUploadData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() goToUploadDataBaseScreen,
    required TResult Function(List<List<dynamic>> formatedData) goToHome,
    required TResult Function(List<List<dynamic>> data) goToChartsScreen,
    required TResult Function() goBackToUploadData,
  }) {
    return goBackToUploadData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? goToUploadDataBaseScreen,
    TResult? Function(List<List<dynamic>> formatedData)? goToHome,
    TResult? Function(List<List<dynamic>> data)? goToChartsScreen,
    TResult? Function()? goBackToUploadData,
  }) {
    return goBackToUploadData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? goToUploadDataBaseScreen,
    TResult Function(List<List<dynamic>> formatedData)? goToHome,
    TResult Function(List<List<dynamic>> data)? goToChartsScreen,
    TResult Function()? goBackToUploadData,
    required TResult orElse(),
  }) {
    if (goBackToUploadData != null) {
      return goBackToUploadData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GoToUploadDataBaseScreen value)
        goToUploadDataBaseScreen,
    required TResult Function(GoToHome value) goToHome,
    required TResult Function(GoToChartsScreen value) goToChartsScreen,
    required TResult Function(GoBackToUploadData value) goBackToUploadData,
  }) {
    return goBackToUploadData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GoToUploadDataBaseScreen value)? goToUploadDataBaseScreen,
    TResult? Function(GoToHome value)? goToHome,
    TResult? Function(GoToChartsScreen value)? goToChartsScreen,
    TResult? Function(GoBackToUploadData value)? goBackToUploadData,
  }) {
    return goBackToUploadData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GoToUploadDataBaseScreen value)? goToUploadDataBaseScreen,
    TResult Function(GoToHome value)? goToHome,
    TResult Function(GoToChartsScreen value)? goToChartsScreen,
    TResult Function(GoBackToUploadData value)? goBackToUploadData,
    required TResult orElse(),
  }) {
    if (goBackToUploadData != null) {
      return goBackToUploadData(this);
    }
    return orElse();
  }
}

abstract class GoBackToUploadData implements DecisionBoardEvent {
  const factory GoBackToUploadData() = _$GoBackToUploadData;
}

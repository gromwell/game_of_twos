// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'scores_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ScoresEventTearOff {
  const _$ScoresEventTearOff();

  _ScoresEventUpdate update(int score, int highScore) {
    return _ScoresEventUpdate(
      score,
      highScore,
    );
  }
}

/// @nodoc
const $ScoresEvent = _$ScoresEventTearOff();

/// @nodoc
mixin _$ScoresEvent {
  int get score => throw _privateConstructorUsedError;
  int get highScore => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int score, int highScore) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int score, int highScore)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int score, int highScore)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ScoresEventUpdate value) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ScoresEventUpdate value)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ScoresEventUpdate value)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ScoresEventCopyWith<ScoresEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScoresEventCopyWith<$Res> {
  factory $ScoresEventCopyWith(
          ScoresEvent value, $Res Function(ScoresEvent) then) =
      _$ScoresEventCopyWithImpl<$Res>;
  $Res call({int score, int highScore});
}

/// @nodoc
class _$ScoresEventCopyWithImpl<$Res> implements $ScoresEventCopyWith<$Res> {
  _$ScoresEventCopyWithImpl(this._value, this._then);

  final ScoresEvent _value;
  // ignore: unused_field
  final $Res Function(ScoresEvent) _then;

  @override
  $Res call({
    Object? score = freezed,
    Object? highScore = freezed,
  }) {
    return _then(_value.copyWith(
      score: score == freezed
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      highScore: highScore == freezed
          ? _value.highScore
          : highScore // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$ScoresEventUpdateCopyWith<$Res>
    implements $ScoresEventCopyWith<$Res> {
  factory _$ScoresEventUpdateCopyWith(
          _ScoresEventUpdate value, $Res Function(_ScoresEventUpdate) then) =
      __$ScoresEventUpdateCopyWithImpl<$Res>;
  @override
  $Res call({int score, int highScore});
}

/// @nodoc
class __$ScoresEventUpdateCopyWithImpl<$Res>
    extends _$ScoresEventCopyWithImpl<$Res>
    implements _$ScoresEventUpdateCopyWith<$Res> {
  __$ScoresEventUpdateCopyWithImpl(
      _ScoresEventUpdate _value, $Res Function(_ScoresEventUpdate) _then)
      : super(_value, (v) => _then(v as _ScoresEventUpdate));

  @override
  _ScoresEventUpdate get _value => super._value as _ScoresEventUpdate;

  @override
  $Res call({
    Object? score = freezed,
    Object? highScore = freezed,
  }) {
    return _then(_ScoresEventUpdate(
      score == freezed
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      highScore == freezed
          ? _value.highScore
          : highScore // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ScoresEventUpdate implements _ScoresEventUpdate {
  const _$_ScoresEventUpdate(this.score, this.highScore);

  @override
  final int score;
  @override
  final int highScore;

  @override
  String toString() {
    return 'ScoresEvent.update(score: $score, highScore: $highScore)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ScoresEventUpdate &&
            const DeepCollectionEquality().equals(other.score, score) &&
            const DeepCollectionEquality().equals(other.highScore, highScore));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(score),
      const DeepCollectionEquality().hash(highScore));

  @JsonKey(ignore: true)
  @override
  _$ScoresEventUpdateCopyWith<_ScoresEventUpdate> get copyWith =>
      __$ScoresEventUpdateCopyWithImpl<_ScoresEventUpdate>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int score, int highScore) update,
  }) {
    return update(score, highScore);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int score, int highScore)? update,
  }) {
    return update?.call(score, highScore);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int score, int highScore)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(score, highScore);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ScoresEventUpdate value) update,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ScoresEventUpdate value)? update,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ScoresEventUpdate value)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class _ScoresEventUpdate implements ScoresEvent {
  const factory _ScoresEventUpdate(int score, int highScore) =
      _$_ScoresEventUpdate;

  @override
  int get score;
  @override
  int get highScore;
  @override
  @JsonKey(ignore: true)
  _$ScoresEventUpdateCopyWith<_ScoresEventUpdate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ScoresStateTearOff {
  const _$ScoresStateTearOff();

  _ScoresState call({required int score, required int highScore}) {
    return _ScoresState(
      score: score,
      highScore: highScore,
    );
  }
}

/// @nodoc
const $ScoresState = _$ScoresStateTearOff();

/// @nodoc
mixin _$ScoresState {
  int get score => throw _privateConstructorUsedError;
  int get highScore => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ScoresStateCopyWith<ScoresState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScoresStateCopyWith<$Res> {
  factory $ScoresStateCopyWith(
          ScoresState value, $Res Function(ScoresState) then) =
      _$ScoresStateCopyWithImpl<$Res>;
  $Res call({int score, int highScore});
}

/// @nodoc
class _$ScoresStateCopyWithImpl<$Res> implements $ScoresStateCopyWith<$Res> {
  _$ScoresStateCopyWithImpl(this._value, this._then);

  final ScoresState _value;
  // ignore: unused_field
  final $Res Function(ScoresState) _then;

  @override
  $Res call({
    Object? score = freezed,
    Object? highScore = freezed,
  }) {
    return _then(_value.copyWith(
      score: score == freezed
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      highScore: highScore == freezed
          ? _value.highScore
          : highScore // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$ScoresStateCopyWith<$Res>
    implements $ScoresStateCopyWith<$Res> {
  factory _$ScoresStateCopyWith(
          _ScoresState value, $Res Function(_ScoresState) then) =
      __$ScoresStateCopyWithImpl<$Res>;
  @override
  $Res call({int score, int highScore});
}

/// @nodoc
class __$ScoresStateCopyWithImpl<$Res> extends _$ScoresStateCopyWithImpl<$Res>
    implements _$ScoresStateCopyWith<$Res> {
  __$ScoresStateCopyWithImpl(
      _ScoresState _value, $Res Function(_ScoresState) _then)
      : super(_value, (v) => _then(v as _ScoresState));

  @override
  _ScoresState get _value => super._value as _ScoresState;

  @override
  $Res call({
    Object? score = freezed,
    Object? highScore = freezed,
  }) {
    return _then(_ScoresState(
      score: score == freezed
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      highScore: highScore == freezed
          ? _value.highScore
          : highScore // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ScoresState implements _ScoresState {
  const _$_ScoresState({required this.score, required this.highScore});

  @override
  final int score;
  @override
  final int highScore;

  @override
  String toString() {
    return 'ScoresState(score: $score, highScore: $highScore)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ScoresState &&
            const DeepCollectionEquality().equals(other.score, score) &&
            const DeepCollectionEquality().equals(other.highScore, highScore));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(score),
      const DeepCollectionEquality().hash(highScore));

  @JsonKey(ignore: true)
  @override
  _$ScoresStateCopyWith<_ScoresState> get copyWith =>
      __$ScoresStateCopyWithImpl<_ScoresState>(this, _$identity);
}

abstract class _ScoresState implements ScoresState {
  const factory _ScoresState({required int score, required int highScore}) =
      _$_ScoresState;

  @override
  int get score;
  @override
  int get highScore;
  @override
  @JsonKey(ignore: true)
  _$ScoresStateCopyWith<_ScoresState> get copyWith =>
      throw _privateConstructorUsedError;
}

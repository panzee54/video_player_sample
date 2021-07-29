// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'video_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$VideoStateTearOff {
  const _$VideoStateTearOff();

  _VideoState call(
      {bool isHorizontalDisplay = false,
      required bool isPlaying,
      required bool canDisplayButton}) {
    return _VideoState(
      isHorizontalDisplay: isHorizontalDisplay,
      isPlaying: isPlaying,
      canDisplayButton: canDisplayButton,
    );
  }
}

/// @nodoc
const $VideoState = _$VideoStateTearOff();

/// @nodoc
mixin _$VideoState {
  bool get isHorizontalDisplay => throw _privateConstructorUsedError;
  bool get isPlaying => throw _privateConstructorUsedError;
  bool get canDisplayButton => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VideoStateCopyWith<VideoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoStateCopyWith<$Res> {
  factory $VideoStateCopyWith(
          VideoState value, $Res Function(VideoState) then) =
      _$VideoStateCopyWithImpl<$Res>;
  $Res call({bool isHorizontalDisplay, bool isPlaying, bool canDisplayButton});
}

/// @nodoc
class _$VideoStateCopyWithImpl<$Res> implements $VideoStateCopyWith<$Res> {
  _$VideoStateCopyWithImpl(this._value, this._then);

  final VideoState _value;
  // ignore: unused_field
  final $Res Function(VideoState) _then;

  @override
  $Res call({
    Object? isHorizontalDisplay = freezed,
    Object? isPlaying = freezed,
    Object? canDisplayButton = freezed,
  }) {
    return _then(_value.copyWith(
      isHorizontalDisplay: isHorizontalDisplay == freezed
          ? _value.isHorizontalDisplay
          : isHorizontalDisplay // ignore: cast_nullable_to_non_nullable
              as bool,
      isPlaying: isPlaying == freezed
          ? _value.isPlaying
          : isPlaying // ignore: cast_nullable_to_non_nullable
              as bool,
      canDisplayButton: canDisplayButton == freezed
          ? _value.canDisplayButton
          : canDisplayButton // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$VideoStateCopyWith<$Res> implements $VideoStateCopyWith<$Res> {
  factory _$VideoStateCopyWith(
          _VideoState value, $Res Function(_VideoState) then) =
      __$VideoStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isHorizontalDisplay, bool isPlaying, bool canDisplayButton});
}

/// @nodoc
class __$VideoStateCopyWithImpl<$Res> extends _$VideoStateCopyWithImpl<$Res>
    implements _$VideoStateCopyWith<$Res> {
  __$VideoStateCopyWithImpl(
      _VideoState _value, $Res Function(_VideoState) _then)
      : super(_value, (v) => _then(v as _VideoState));

  @override
  _VideoState get _value => super._value as _VideoState;

  @override
  $Res call({
    Object? isHorizontalDisplay = freezed,
    Object? isPlaying = freezed,
    Object? canDisplayButton = freezed,
  }) {
    return _then(_VideoState(
      isHorizontalDisplay: isHorizontalDisplay == freezed
          ? _value.isHorizontalDisplay
          : isHorizontalDisplay // ignore: cast_nullable_to_non_nullable
              as bool,
      isPlaying: isPlaying == freezed
          ? _value.isPlaying
          : isPlaying // ignore: cast_nullable_to_non_nullable
              as bool,
      canDisplayButton: canDisplayButton == freezed
          ? _value.canDisplayButton
          : canDisplayButton // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_VideoState implements _VideoState {
  const _$_VideoState(
      {this.isHorizontalDisplay = false,
      required this.isPlaying,
      required this.canDisplayButton});

  @JsonKey(defaultValue: false)
  @override
  final bool isHorizontalDisplay;
  @override
  final bool isPlaying;
  @override
  final bool canDisplayButton;

  @override
  String toString() {
    return 'VideoState(isHorizontalDisplay: $isHorizontalDisplay, isPlaying: $isPlaying, canDisplayButton: $canDisplayButton)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VideoState &&
            (identical(other.isHorizontalDisplay, isHorizontalDisplay) ||
                const DeepCollectionEquality()
                    .equals(other.isHorizontalDisplay, isHorizontalDisplay)) &&
            (identical(other.isPlaying, isPlaying) ||
                const DeepCollectionEquality()
                    .equals(other.isPlaying, isPlaying)) &&
            (identical(other.canDisplayButton, canDisplayButton) ||
                const DeepCollectionEquality()
                    .equals(other.canDisplayButton, canDisplayButton)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isHorizontalDisplay) ^
      const DeepCollectionEquality().hash(isPlaying) ^
      const DeepCollectionEquality().hash(canDisplayButton);

  @JsonKey(ignore: true)
  @override
  _$VideoStateCopyWith<_VideoState> get copyWith =>
      __$VideoStateCopyWithImpl<_VideoState>(this, _$identity);
}

abstract class _VideoState implements VideoState {
  const factory _VideoState(
      {bool isHorizontalDisplay,
      required bool isPlaying,
      required bool canDisplayButton}) = _$_VideoState;

  @override
  bool get isHorizontalDisplay => throw _privateConstructorUsedError;
  @override
  bool get isPlaying => throw _privateConstructorUsedError;
  @override
  bool get canDisplayButton => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$VideoStateCopyWith<_VideoState> get copyWith =>
      throw _privateConstructorUsedError;
}

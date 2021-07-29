import 'package:freezed_annotation/freezed_annotation.dart';
part 'video_state.freezed.dart';

@freezed
abstract class VideoState with _$VideoState {
  const factory VideoState({
    @Default(false) bool isHorizontalDisplay,
    required bool isPlaying,
    required bool canDisplayButton,
  }) = _VideoState;
}

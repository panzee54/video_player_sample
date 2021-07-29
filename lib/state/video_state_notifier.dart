import 'package:flutter_video_player_sample/state/video_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:video_player/video_player.dart';

final videoProvider = StateNotifierProvider<VideoStateNotifier, VideoState>(
  (_) => VideoStateNotifier(),
);

final videoControllerProvider =
    FutureProviderFamily<VideoPlayerController, String>(
  (_, downloadURL) async {
    final controller = VideoPlayerController.network(downloadURL);
    await controller.initialize();
    await controller.play();
    return controller;
  },
);

class VideoStateNotifier extends StateNotifier<VideoState> {
  VideoStateNotifier()
      : super(
          const VideoState(isPlaying: true, canDisplayButton: true),
        );

  void switchScreenDisplay() =>
      state = state.copyWith(isHorizontalDisplay: !state.isHorizontalDisplay);

  void switchPlayingStatus() =>
      state = state.copyWith(isPlaying: !state.isPlaying);

  void switchDisplayButton() =>
      state = state.copyWith(canDisplayButton: !state.canDisplayButton);
}

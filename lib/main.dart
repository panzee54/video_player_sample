import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_video_player_sample/state/video_state_notifier.dart';
// ignore: deprecated_member_use
import 'package:hooks_riverpod/all.dart';
import 'package:video_player/video_player.dart';

const _videoURL =
    'https://www9.nhk.or.jp/das/movie/D0002161/D0002161318_00000_V_000.mp4';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends HookWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final videoController = useProvider(videoControllerProvider(_videoURL));
    final videoNotifier = useProvider(videoProvider.notifier);
    final videoState = useProvider(videoProvider);
    final canDisplayButton = videoState.canDisplayButton;
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: videoController.when(
            data: (controller) {
              final value = controller.value;
              return RotatedBox(
                quarterTurns: videoState.isHorizontalDisplay ? 1 : 0,
                child: AspectRatio(
                  aspectRatio: value.aspectRatio,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      VideoPlayer(controller),
                      canDisplayButton
                          ? Container(
                              color: Colors.white.withAlpha(100),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 10,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        videoState.isPlaying
                                            ? controller.pause()
                                            : controller.play();
                                        videoNotifier.switchPlayingStatus();
                                      },
                                      child: Icon(videoState.isPlaying
                                          ? Icons.pause_outlined
                                          : Icons.play_arrow_outlined),
                                    ),
                                    GestureDetector(
                                      onTap: () => controller.seekTo(
                                        Duration(
                                          seconds: controller
                                                  .value.position.inSeconds -
                                              10,
                                        ),
                                      ),
                                      child:
                                          const Icon(Icons.replay_10_outlined),
                                    ),
                                    GestureDetector(
                                      onTap: () => controller.seekTo(
                                        Duration(
                                          seconds: controller
                                                  .value.position.inSeconds +
                                              10,
                                        ),
                                      ),
                                      child:
                                          const Icon(Icons.forward_10_outlined),
                                    ),
                                    GestureDetector(
                                      onTap: videoNotifier.switchScreenDisplay,
                                      child: Icon(videoState.isHorizontalDisplay
                                          ? Icons.fullscreen_exit_outlined
                                          : Icons.fullscreen_outlined),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          : const SizedBox(),
                      VideoProgressIndicator(
                        controller,
                        allowScrubbing: true,
                      ),
                    ],
                  ),
                ),
              );
            },
            loading: () => const CircularProgressIndicator(),
            error: (e, t) => Text(
              e.toString(),
            ),
          ),
        ),
      ),
    );
  }
}

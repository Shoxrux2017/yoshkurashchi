import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class UsullarVideoScreen extends StatefulWidget {
  final String videoPath;
  const UsullarVideoScreen({super.key, required this.videoPath});

  @override
  State<UsullarVideoScreen> createState() => _UsullarVideoScreenState();
}

class _UsullarVideoScreenState extends State<UsullarVideoScreen> {
  late FlickManager flickManager;

  @override
  void initState() {
    debugPrint(widget.videoPath);

    flickManager = FlickManager(
      videoPlayerController: VideoPlayerController.asset((widget.videoPath)),
      // videoPlayerController: VideoPlayerController.networkUrl(Uri.parse(
      //     "https://shoxrux2017.github.io/yoshkurashchi.uz/lesson1/1.mp4"))
    );

    super.initState();
  }

  @override
  void dispose() {
    flickManager.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: AspectRatio(
      aspectRatio: 16 / 9,
      child: FlickVideoPlayer(flickManager: flickManager),
    )));
  }
}

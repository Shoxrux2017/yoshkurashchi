import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

class MushaklarVideoScreen extends StatefulWidget {
  final String videoPath;
  const MushaklarVideoScreen({super.key, required this.videoPath});

  @override
  State<MushaklarVideoScreen> createState() => _MushaklarVideoScreenState();
}

class _MushaklarVideoScreenState extends State<MushaklarVideoScreen> {
  late FlickManager flickManager;

  @override
  void initState() {
    debugPrint(widget.videoPath);

    flickManager = FlickManager(
        videoPlayerController: VideoPlayerController.asset((widget.videoPath)));

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
        appBar: AppBar(
          title: const Text(
            "VIDEO LAVHA",
            style: TextStyle(
                fontSize: 18,
                color: Colors.black87,
                fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.lightBlue,
          centerTitle: true,
        ),
        body: Center(
            child: AspectRatio(
          aspectRatio: 16 / 9,
          child: FlickVideoPlayer(flickManager: flickManager),
        )));
  }
}

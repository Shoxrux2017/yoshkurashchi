import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:test_flutter/screens/usullar_video_screen.dart';

class UsullarShowScreen extends StatelessWidget {
  final String pdfUrl;
  final String videoUrl;
  const UsullarShowScreen(
      {super.key, required this.pdfUrl, required this.videoUrl});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("data"),
            centerTitle: true,
            bottom: const TabBar(tabs: [
              Tab(icon: Icon(Icons.book)),
              Tab(icon: Icon(Icons.video_camera_back)),
            ]),
          ),
          body: TabBarView(
            children: [
              SfPdfViewer.asset(pdfUrl),
              UsullarVideoScreen(videoPath: videoUrl),
            ],
          ),
        ));
  }
}

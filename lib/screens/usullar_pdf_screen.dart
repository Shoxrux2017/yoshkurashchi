import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class UsullarPdfScreen extends StatelessWidget {
  const UsullarPdfScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SfPdfViewer.asset("assets/pdf/lesson1/1.pdf"),
    );
  }
}

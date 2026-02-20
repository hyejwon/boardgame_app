import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class ManualViewerSheet extends StatelessWidget {

  final String asset;

  const ManualViewerSheet({super.key, required this.asset});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.9,
      child: SfPdfViewer.asset(asset),
    );
  }
}
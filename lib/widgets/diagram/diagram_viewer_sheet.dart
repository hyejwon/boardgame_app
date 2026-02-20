import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DiagramViewerSheet extends StatelessWidget {

  final String asset;

  const DiagramViewerSheet({super.key, required this.asset});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.9,
      child: InteractiveViewer(
        child: SvgPicture.asset(asset),
      ),
    );
  }
}
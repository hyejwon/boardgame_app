import 'package:flutter/material.dart';
import '../../models/game.dart';
import '../avalon/avalon_setup_screen.dart';
import '../../widgets/manual/manual_viewer_sheet.dart';
import '../../widgets/diagram/diagram_viewer_sheet.dart';

class GameDetailScreen extends StatelessWidget {
  final Game game;

  const GameDetailScreen({super.key, required this.game});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(game.name)),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [

            Text(game.description),

            const SizedBox(height: 20),

            ElevatedButton(
              child: const Text("설명서 보기"),
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  builder: (_) =>
                      ManualViewerSheet(asset: game.manualAsset),
                );
              },
            ),

            ElevatedButton(
              child: const Text("역할 관계도"),
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  builder: (_) =>
                      DiagramViewerSheet(asset: game.diagramAsset),
                );
              },
            ),

            ElevatedButton(
              child: const Text("게임 시작"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const AvalonSetupScreen(),
                  ),
                );
              },
            ),

          ],
        ),
      ),
    );
  }
}
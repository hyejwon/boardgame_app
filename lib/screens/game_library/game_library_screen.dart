import 'package:flutter/material.dart';
import '../../models/game.dart';
import '../game_detail/game_detail_screen.dart';

class GameLibraryScreen extends StatelessWidget {
  const GameLibraryScreen({super.key});

  static const avalon = Game(
    id: "avalon",
    name: "아발론",
    description: "선과 악이 숨겨진 상태에서 퀘스트 성공/실패로 승부",
    manualAsset: "assets/manuals/avalon_rulebook.pdf",
    diagramAsset: "assets/diagrams/avalon_roles.svg",
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('게임 선택')),
      body: ListView(
        children: [
          ListTile(
            title: const Text("아발론"),
            subtitle: const Text("5~10명"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => GameDetailScreen(game: avalon),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'screens/game_library/game_library_screen.dart';

class BoardgameHostApp extends StatelessWidget {
  const BoardgameHostApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Boardgame Host',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const GameLibraryScreen(),
    );
  }
}
import 'package:flutter/material.dart';

class AvalonRunScreen extends StatelessWidget {
  const AvalonRunScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('아발론 진행')),
      body: const Center(
        child: Text(
          "게임 진행 화면",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
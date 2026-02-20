import 'package:flutter/material.dart';
import 'avalon_run_screen.dart';

class AvalonSetupScreen extends StatelessWidget {
  const AvalonSetupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("아발론 설정")),
      body: Center(
        child: ElevatedButton(
          child: const Text("게임 시작"),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => const AvalonRunScreen(),
              ),
            );
          },
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Opacity(
            opacity: 0.8,
            child: Image.asset(
              'packages/quizapp/assets/images/quiz-logo.png',
              width: 300,
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            'Learn Flutter the fun way!',
            style: TextStyle(fontSize: 24, color: Colors.white),
          ),
          const SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed: () {
              print("Start Quiz button pressed");
            },
            style: OutlinedButton.styleFrom(
              side: const BorderSide(color: Colors.white),
            ),
            icon: const Icon(Icons.arrow_right_alt, color: Colors.white),
            label: const Text(
              'Start Quiz',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}

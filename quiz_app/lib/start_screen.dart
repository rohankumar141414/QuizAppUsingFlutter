import 'package:flutter/material.dart';

class NewWidget extends StatelessWidget {
  const NewWidget(this.newScreen, {super.key});

  final void Function() newScreen;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.all(40),
            child: Image.asset(
              'images/quiz-logo.png',
              width: 300,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: const Text(
              "Learn Flutter The Fun Way!",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: OutlinedButton.icon(
              onPressed: newScreen,
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
              ),
              icon: const Icon(Icons.arrow_right_alt),
              label: const Text('Start Quiz'),
            ),
          )
        ],
      ),
    );
  }
}

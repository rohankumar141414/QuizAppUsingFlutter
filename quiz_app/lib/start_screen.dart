import 'package:flutter/material.dart';

class NewWidget extends StatelessWidget {
  const NewWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            colors: [Colors.indigo, Colors.blue],
            begin: Alignment.topLeft,
            end: Alignment.bottomLeft),
      ),
      child: Center(
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
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(foregroundColor: Colors.white),
                child: const Text('Start Quiz'),
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
              color: const Color.fromARGB(255, 2, 25, 62),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: Text(
              "Learn Flutter The Fun Way!",
              style: GoogleFonts.eduNswActFoundation(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 2, 25, 62),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: OutlinedButton.icon(
              onPressed: newScreen,
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: const Color.fromARGB(255, 2, 25, 62),
                shape: const ContinuousRectangleBorder(),
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

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/data/question_texts.dart';
import 'package:quiz_app/result_summary.dart';

class ResultsScreen extends StatelessWidget {
  ResultsScreen(this.chosenAns, {super.key, required this.newScreen});

  final void Function() newScreen;
  List<String> chosenAns;

  List<Map<String, Object>> getSummary() {
    List<Map<String, Object>> summary = [];

    for (int i = 0; i < questions.length; i++) {
      summary.add(
        {
          'question_index': i,
          'question': questions[i].quest,
          'correct_answer': questions[i].ans[0],
          'chosen_answer': chosenAns[i]
        },
      );
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final totalQuestions = questions.length;
    final correctAns = getSummary().where((data) {
      return data['correct_answer'] == data['chosen_answer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "$correctAns out of $totalQuestions questions answered correctly",
              style: GoogleFonts.lora(
                fontSize: 24,
                color: const Color.fromARGB(255, 255, 255, 255),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            ResultSummary(getSummary()),
            const SizedBox(
              height: 30,
            ),
            OutlinedButton.icon(
              onPressed:
                newScreen,
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: const Color.fromARGB(255, 2, 25, 62),
                shape: const ContinuousRectangleBorder(),
              ),
              icon: const Icon(Icons.replay),
              label: const Text('restart'),
            ),
          ],
        ),
      ),
    );
  }
}

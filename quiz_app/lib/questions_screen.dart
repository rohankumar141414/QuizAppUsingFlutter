import 'package:flutter/material.dart';
import 'package:quiz_app/ans_button.dart';
import 'package:quiz_app/data/question_texts.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen(this.saveAns, {super.key});
  final void Function(String answer) saveAns;

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var quesIndex = 0;

  void clickAns(String ans) {
    widget.saveAns(ans);
    setState(() {
      quesIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final thisQuestion = questions[quesIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              thisQuestion.quest,
              style: GoogleFonts.lora(
                fontSize: 24,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            ...thisQuestion.shuffledAns().map(
              (answer) {
                return AnsButton(
                  answer,
                  () {
                    clickAns(answer);
                  },
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

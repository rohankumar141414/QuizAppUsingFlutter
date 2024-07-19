import 'package:flutter/material.dart';
import 'package:quiz_app/data/question_texts.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/results_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  Widget? currentState;
  List<String> selectedAns = [];

  @override
  void initState() {
    super.initState();
    currentState = NewWidget(switchScreen);
  }

  void chooseAns(answer) {
    selectedAns.add(answer);
    if (selectedAns.length == questions.length) {
      setState(() {
        currentState = ResultsScreen(
          selectedAns,
          newScreen: switchScreen,
        );
        selectedAns = [];
      });
    }
  }

  void switchScreen() {
    setState(() {
      currentState = QuestionsScreen(chooseAns);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.indigo, Colors.blue],
                begin: Alignment.topLeft,
                end: Alignment.bottomLeft),
          ),
          child: currentState,
        ),
      ),
    );
  }
}

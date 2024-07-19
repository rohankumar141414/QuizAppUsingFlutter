import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultSummary extends StatelessWidget {
  ResultSummary(this.dataSummary, {super.key});

  List<Map<String, Object>> dataSummary;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
            children: dataSummary.map(
          (data) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 30,
                  width: 30,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: (data["chosen_answer"] == data["correct_answer"]) ? Colors.green : Colors.red,
                  ),
                  child: Text(
                    ((data["question_index"] as int) + 1).toString(),
                    style: const TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        (data["question"]).toString(),
                        style: const TextStyle(
                          color: Color.fromARGB(255, 231, 220, 9),
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        (data["chosen_answer"]).toString(),
                        style: GoogleFonts.lora(
                          fontSize: 15,
                          color: const Color.fromARGB(255, 122, 39, 4),
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                        ),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        (data["correct_answer"]).toString(),
                        style: GoogleFonts.lora(
                          fontSize: 15,
                          color: const Color.fromARGB(255, 4, 62, 22),
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        ).toList()),
      ),
    );
  }
}

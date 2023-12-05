import 'package:flutter/material.dart';
import 'package:quiz_app/data/quiz_data.dart';
import 'package:quiz_app/widgets/questions_summary.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(
      {super.key, required this.chosenAnswers, required this.onRestartQuiz});

  final List<String> chosenAnswers;
  final void Function() onRestartQuiz;

  List<Map<String, Object>> getSummuryData() {
    final List<Map<String, Object>> summuryData = [];
    for (var i = 0; i < chosenAnswers.length; i++) {
      summuryData.add({
        'question_index': i,
        'question': questions[i].question,
        'correct_answer': questions[i].answers[0],
        'chosen_answer': chosenAnswers[i],
        'is_correct': questions[i].answers[0] == chosenAnswers[i],
      });
    }
    return summuryData;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummuryData();
    final score = summaryData
        .where((item) => item['correct_answer'] == item['chosen_answer'])
        .length;
    final total = questions.length;
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "You have finished the quiz!",
              style: GoogleFonts.lato(
                textStyle: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              "Here is your score: $score/$total",
              style: GoogleFonts.lato(
                textStyle: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            QuestionsSummary(getSummuryData()),
            const SizedBox(
              height: 30,
            ),
            Text(
              "You can do better!",
              style: GoogleFonts.lato(
                textStyle: const TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton.icon(
              onPressed: onRestartQuiz,
              label: const Text("Try again"),
              icon: const Icon(Icons.refresh),
            ),
          ],
        ),
      ),
    );
  }
}

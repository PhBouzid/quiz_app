import 'package:flutter/material.dart';
import 'package:quiz_app/data/quiz_data.dart';
import 'package:quiz_app/widgets/questions_summary.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.chosenAnswers});

  final List<String> chosenAnswers;

  List<Map<String, Object>> getSummuryData() {
    final List<Map<String, Object>> summuryData = [];
    for (var i = 0; i < chosenAnswers.length; i++) {
      summuryData.add({
        'question_index': i,
        'question': questions[i].question,
        'correct_answer': questions[i].answers[0],
        'chosen_answer': chosenAnswers[i],
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
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("You have finished the quiz!"),
            Text("Here is your score: $score/$total"),
            const SizedBox(
              height: 20,
            ),
            QuestionsSummary(getSummuryData()),
            const Text("You can do better!"),
            const SizedBox(
              height: 20,
            ),
            TextButton(onPressed: () {}, child: Text("Try again")),
          ],
        ),
      ),
    );
  }
}

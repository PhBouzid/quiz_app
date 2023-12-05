import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/widgets/results_widgets/question_style.dart';
import 'package:quiz_app/widgets/results_widgets/question_index.dart';

class QuestionRow extends StatelessWidget {
  const QuestionRow({super.key, required this.questionData});

  final Map<String, Object> questionData;

  @override
  Widget build(BuildContext context) {
    final isCorrectAnswer = questionData['is_correct'] as bool;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuestionIndex(
            questionIndex: (questionData['question_index'] as int),
            isCorrectAnswer: (questionData['is_correct'] as bool),
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                QuestionStyle(
                    question: questionData['question'] as String,
                    isCorrectAnswer: (questionData['is_correct'] as bool)),
                Text(questionData['chosen_answer'] as String,
                    style: GoogleFonts.lato(
                      textStyle: TextStyle(
                        color: isCorrectAnswer ? Colors.green : Colors.red,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    textAlign: TextAlign.left),
                const SizedBox(
                  height: 1,
                ),
                Text(
                  questionData['correct_answer'] as String,
                  style: GoogleFonts.lato(
                    textStyle: const TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

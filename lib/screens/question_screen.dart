import 'package:flutter/material.dart';
import 'package:quiz_app/widgets/answer_button.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('The question is...'),
          const SizedBox(height: 30),
          AnswerButton(answer: "Answer 1", onPressed: () {}),
          AnswerButton(answer: "Answer 2", onPressed: () {}),
          AnswerButton(answer: "Answer 3", onPressed: () {}),
          AnswerButton(answer: "Answer 4", onPressed: () {}),
        ],
      ),
    );
  }
}

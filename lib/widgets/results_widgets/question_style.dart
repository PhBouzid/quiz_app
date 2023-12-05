import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionStyle extends StatelessWidget {
  const QuestionStyle(
      {super.key, required this.question, required this.isCorrectAnswer});

  final String question;
  final bool isCorrectAnswer;

  @override
  Widget build(BuildContext context) {
    return Text(
      question,
      style: GoogleFonts.lato(
        textStyle: const TextStyle(
          color: Color.fromARGB(255, 229, 229, 226),
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
      ),
      textAlign: TextAlign.left,
    );
  }
}

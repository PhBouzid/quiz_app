import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((item) {
            return Row(
              children: [
                Text(((item['question_index'] as int) + 1).toString()),
                Expanded(
                  child: Column(
                    children: [
                      Text(item['question'] as String),
                      const SizedBox(
                        height: 0.5,
                      ),
                      Text(item['chosen_answer'] as String),
                      const SizedBox(
                        height: 0.5,
                      ),
                      Text(item['correct_answer'] as String),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 3,
                )
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}

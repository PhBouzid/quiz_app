import 'package:flutter/material.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 30,
          ),
          Text("Question 1 of 10",
              style: TextStyle(
                  fontSize: 24,
                  color: Color.fromARGB(
                    255,
                    237,
                    223,
                    252,
                  ))),
        ],
      ),
    );
  }
}

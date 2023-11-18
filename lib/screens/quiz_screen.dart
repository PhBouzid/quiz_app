import 'package:flutter/material.dart';
import 'package:quiz_app/screens/start_screen.dart';

void main() {
  runApp(const MaterialApp(
    title: "quiz app",
    home: Quiz(),
  ));
}

class Quiz extends StatefulWidget {
  const Quiz({Key? key}) : super(key: key);
  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {

  Widget screen = const StartScreen();

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Quiz App"),
      ),
      backgroundColor: Gradient(colors: [
        Colors.purple,
        Colors.indigo,
      ])
      body: const Center(
        child: Text("Hello World!"),
      ),
    );
  }
}

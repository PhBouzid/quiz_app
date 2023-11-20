import 'package:flutter/material.dart';
import 'package:quiz_app/screens/question_screen.dart';
import 'package:quiz_app/screens/start_screen.dart';
import 'package:quiz_app/widgets/background.dart';

void main() {}

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  var activeScreen = 1;
  BoxDecoration background = Background().decorate();

  @override
  void initState() {
    super.initState();
  }

  void switchScreen() {
    setState(() {
      activeScreen = 2;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screen = StartScreen(switchScreen);
    if (activeScreen == 2) {
      screen = const QuestionScreen();
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Quiz App"),
      ),
      body: Container(
        decoration: background,
        child: screen,
      ),
    );
  }
}

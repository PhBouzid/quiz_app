import 'package:flutter/material.dart';
import 'package:quiz_app/data/quiz_data.dart';
import 'package:quiz_app/screens/question_screen.dart';
import 'package:quiz_app/screens/results.dart';
import 'package:quiz_app/screens/start_screen.dart';
import 'package:quiz_app/widgets/background.dart';

void main() {}

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
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

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      setState(() {
        //selectedAnswers = [];
        activeScreen = 3;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget screen = StartScreen(switchScreen);
    if (activeScreen == 2) {
      screen = QuestionScreen(onSelectAnswer: chooseAnswer);
    } else if (activeScreen == 3) {
      screen = ResultScreen(chosenAnswers: selectedAnswers);
    }

    return Scaffold(
      body: Container(
        decoration: background,
        child: screen,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:quiz_app/home_quiz.dart';
import 'package:quiz_app/question_screen.dart';

class GradientContainer extends StatefulWidget {
  const GradientContainer({super.key});

  @override
  State<GradientContainer> createState() => _GradientContainerState();
}

class _GradientContainerState extends State<GradientContainer> {
  Widget? activeScreen;

  @override
  void initState() {
    activeScreen = HomeQuiz(switchScreen);
    super.initState();
  }

  void switchScreen() {
    setState(() {
      activeScreen = QuestionScreen();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 45, 18, 110),
            Color.fromARGB(255, 87, 17, 186)
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: activeScreen,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:quiz_app/button_navigation.dart';

class HomeQuiz extends StatelessWidget {
  const HomeQuiz({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 200,
          color: const Color.fromARGB(150, 255, 255, 255),
        ),
        SizedBox(
          height: 40,
        ),
        Text(
          "Learn Flutter the fun way!",
          style: TextStyle(fontSize: 25, color: Colors.white),
        ),
        SizedBox(
          height: 40,
        ),
        ButtonNavigation(),
      ],
    );
  }
}

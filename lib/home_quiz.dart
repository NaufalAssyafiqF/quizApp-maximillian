import 'package:flutter/material.dart';

class HomeQuiz extends StatelessWidget {
  const HomeQuiz(this.startQuiz, {super.key});

  final void Function() startQuiz;

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
        OutlinedButton.icon(
          onPressed: startQuiz,
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Colors.amber.shade900,
            side: BorderSide(color: Colors.white, width: 1),
            padding: EdgeInsets.only(top: 20, bottom: 20, left: 30, right: 30),
          ),
          label: Text(
            "Start Quiz",
            style: TextStyle(fontSize: 20),
          ),
          iconAlignment: IconAlignment.end,
          icon: Icon(
            Icons.arrow_right_alt,
            size: 30,
            weight: 400,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}

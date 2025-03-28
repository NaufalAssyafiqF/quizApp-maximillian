import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/question_summary.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.chosenAnswer});

  final List<String> chosenAnswer;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswer.length; i++) {
      summary.add({
        "question_index": i,
        "question": questions[i].text,
        "correct_answer": questions[i].answer[0],
        "user_answer": chosenAnswer[i],
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "You answer x out of y question correctly!",
          style: GoogleFonts.lato(
              color: Colors.white, fontSize: 24, fontWeight: FontWeight.w400),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          "List of answer and questions",
          style: GoogleFonts.lato(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
        SizedBox(
          height: 30,
        ),
        QuestionSummary(summaryData: getSummaryData()),
        TextButton(onPressed: () {}, child: Text("Result Quiz!"))
      ],
    );
  }
}

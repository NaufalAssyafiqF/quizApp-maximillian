import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/question_summary/question_summary.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(
      {super.key, required this.chosenAnswer, required this.onRestart});

  final List<String> chosenAnswer;
  final void Function() onRestart;

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
    final summaryData = getSummaryData();
    final numTotalQuestion = questions.length;
    final numCorrectQuestion = summaryData.where((data) {
      return data["user_answer"] == data["correct_answer"];
    }).length;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "You answer $numCorrectQuestion out of $numTotalQuestion question correctly!",
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
        QuestionSummary(summaryData: summaryData),
        SizedBox(
          height: 20,
        ),
        TextButton.icon(
          onPressed: onRestart,
          style: TextButton.styleFrom(foregroundColor: Colors.white),
          icon: Icon(Icons.refresh, color: Colors.white),
          label: Text("Restart Quiz"),
        )
      ],
    );
  }
}

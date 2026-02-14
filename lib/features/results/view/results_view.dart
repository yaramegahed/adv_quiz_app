import 'package:flutter/material.dart';

import '../../../core/data/questions_data.dart';

class ResultsView extends StatelessWidget {
  final List<String> selectedAnswers;

  const ResultsView({super.key, required this.selectedAnswers});

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < selectedAnswers.length; i++) {
      summary.add({
        "question_index":i,
        "question": questionsList[i].question,
        "correct_answer": questionsList[i].answers[0],
        "user_answer": selectedAnswers[i],
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 100,
            ),
            Text(
              textAlign: TextAlign.center,
              "You answered 3 out of 5 questions correctly!",
              style: TextStyle(color: Colors.white, fontSize: 22),
            ),
            SizedBox(
              height: 30,
            ),
            Text("List of answers and questions"),
            SizedBox(
              height: 30,
            ),
            TextButton(onPressed: () {}, child: Text("Restart Quiz!")),
          ],
        ),
      ),
    );
  }
}

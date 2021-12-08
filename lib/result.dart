import 'package:flutter/material.dart';

class Result extends StatelessWidget {

  final VoidCallback resetQuiz;
  final int totalScore;

  Result(this.totalScore, this.resetQuiz);

  String get resultPhrase {
    var resultText;

    if (totalScore  <= 10) {
      resultText = "You only get 1 out of 5 questions";
    }
    else if (totalScore <= 20) {
      resultText = "You only get 2 out of 5 questions";
    }
    else if (totalScore <= 30) {
      resultText = "You only get 3 out of 5 questions";
    }
    else if (totalScore <= 40) {
      resultText = "You only get 4 out of 5 questions";
    }
    else {
      resultText = "You only get 5 out of 5 questions";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              resultPhrase,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            ElevatedButton(
              child: Text("restart quiz"),
              onPressed: resetQuiz,
            ),
          ],
        ),
      );
  }
}
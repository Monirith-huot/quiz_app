import 'package:flutter/material.dart';

class Result extends StatelessWidget {

  final VoidCallback resetQuiz;

  Result(this.resetQuiz);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          children: [
            Text("You did it"),
            ElevatedButton(
              child: Text("restart quiz"),
              onPressed: _resetState,
            ),
          ],
        ),
      );
  }
}
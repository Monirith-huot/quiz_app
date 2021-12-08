import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = [
    "what is the biggest continent ?",
    "What does “www” stand for in a website browser ?",
    "What is the capital city of Cambodia ? ",
    "What is the name of the largest ocean on earth?",
    "What year was the very first model of the iPhone released ?",
  ];

  var _questionsIndex = 0;

  void _answerQuestions() {
    setState(() {
      _questionsIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz App"),
        ),
        body: _questionsIndex < _questions.length
            ? Column(
                children: [
                  Text(_questions[_questionsIndex]),
                  ElevatedButton(
                    onPressed: _answerQuestions,
                    child: Text("Press Me !"),
                  ),
                  ElevatedButton(
                    onPressed: _answerQuestions,
                    child: Text("Press Me !"),
                  ),
                  ElevatedButton(
                    onPressed: _answerQuestions,
                    child: Text("Press Me !"),
                  ),
                  ElevatedButton(
                    onPressed: _answerQuestions,
                    child: Text("Press Me !"),
                  ),
                ],
              )
            : Center(
                child: Text("You did it"),
              ),
      ),
    );
  }
}

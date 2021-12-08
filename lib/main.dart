import 'package:flutter/material.dart';
import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = [
    {
      "questionText": "what is the biggest continent ?",
      "answers": ["Asia", "Africa", "South Africa", "Eurrope"],
    },
    {
      "questionText": "What does “www” stand for in a website browser ?",
      "answers": ["Asia", "Africa", "South Africa", "Eurrope"],
    },
    {
      "questionText": "What is the capital city of Cambodia ? ",
      "answers": ["Asia", "Africa", "South Africa", "Eurrope"],
    },
    {
      "questionText": "What is the name of the largest ocean on earth?" ,
      "answers": ["Asia", "Africa", "South Africa", "Eurrope"],
    },
    {
      "questionText": "What year was the very first model of the iPhone released ?",
      "answers": ["Asia", "Africa", "South Africa", "Eurrope"],
    },
  ];

  var _questionsIndex = 0;

  void _answerQuestions() {
    setState(() {
      _questionsIndex += 1;
    });
  }

  void _resetState() {
    setState(() {
      _questionsIndex = 0;
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
                  Question(_questions[_questionsIndex]["questionText"] as String),
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
                child: Column(
                  children: [
                    Text("You did it"),
                    ElevatedButton(
                      child: Text("restart quiz"),
                      onPressed: _resetState,
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}

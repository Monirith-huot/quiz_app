import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': "what is the biggest continent ?",
      "answers": [

        {"text": 'Asia', "score": 10},
        {'text': 'Africa', "score": 0},
        {'text': 'South America', "score": 0},
        {'text': 'Eurrope', "score": 0},
      ]
    },
    {
      'questionText': "What does “www” stand for in a website browser ?",
      "answers": [
      
        {"text": 'Water World War ', "score": 0},
        {'text': 'World Web Wide', "score": 0},
        {'text': 'World Wide Web', "score": 10},
        {'text': 'Web Wide World', "score": 0},
      ]
    },
    {
      'questionText': "What is the capital city of Cambodia ? ",
      "answers": [

        {"text": 'Seim Reap', "score": 0},
        {'text': 'Kampot', "score": 0},
        {'text': 'Kandal', "score": 0},
        {'text': 'Phnom Penh', "score": 10},
      ]
    },
    {
      'questionText': "What is the name of the largest ocean on earth?",
      "answers": [

        {"text": 'Antarctic Ocean', "score": 0},
        {'text': 'Indian Ocean ', "score": 0},
        {'text': ' Pacific Ocean', "score": 10},
        {'text': 'Arctic Ocean', "score": 0},
      ]
    },
    {
      'questionText':
          "What year was the very first model of the iPhone released ?",
      "answers": [
        {"text": '2005', "score": 0},
        {'text': '2010', "score": 0},
        {'text': '2007', "score": 10},
        {'text': '2006', "score": 0},
      ]
    },
  ];

  var _questionsIndex = 0;
  var _totalScore = 0;


  void _answerQuestions(int score) {
    _totalScore += score;

    setState(() {
      _questionsIndex += 1;

    });
  }

  void _resetState() {
    setState(() {
      _questionsIndex = 0;
      _totalScore = 0;
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
            ? Quiz(                
                answerQuestion: _answerQuestions,
                questionIndex: _questionsIndex,
                questions: _questions,
                )
            // Column(
            //     children: [
            //       Question(
            //           _questions[_questionsIndex]["questionText"] as String),


            //       ...(_questions[_questionsIndex]["answers"] as List<String>)
            //           .map((answer) {
            //         return Answer(_answerQuestions, answer);
            //       }).toList()
            //       // ElevatedButton(
            //       //   onPressed: _answerQuestions,
            //       //   child: Text("Press Me !"),
            //       // ),
            //       // ElevatedButton(
            //       //   onPressed: _answerQuestions,
            //       //   child: Text("Press Me !"),
            //       // ),
            //       // ElevatedButton(
            //       //   onPressed: _answerQuestions,
            //       //   child: Text("Press Me !"),
            //       // ),
            //     ],
            //   )
            : Result(_totalScore ,_resetState)
      ),
    );
  }
}

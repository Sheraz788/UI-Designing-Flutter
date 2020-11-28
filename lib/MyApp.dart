import 'package:flutter/material.dart';
import 'package:flutter_ui_designing/Quiz.dart';
import 'package:flutter_ui_designing/result.dart';

class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp>{

  var questions = [
    {
      'questionText' : 'What\'s your favorite color?',
      'answers' : [
        {'text' : 'Red', 'score' : 10},
        {'text' : 'Blue', 'score' : 7},
        {'text' : 'Green', 'score' : 4},
        {'text' : 'Yellow', 'score' : 1}
      ]
    },
    {
      'questionText' : 'What\'s your favorite animal?',
      'answers' : [
          {'text' : 'Elephant', 'score' : 10},
          {'text' : 'Lion', 'score' : 7},
          {'text' : 'Rabbit', 'score' : 4},
          {'text' : 'Monkey', 'score' : 1}
        ]
    },
    {
      'questionText' : 'What\'s your favorite name?',
      'answers' : [
          {'text' : 'Maxwell', 'score' : 10},
          {'text' : 'Rahul', 'score' : 7},
          {'text' : 'Wasim', 'score' : 4},
          {'text' : 'Furguson', 'score' : 1}
        ]
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _quizReset(){
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score){

    _totalScore = score + _totalScore;

      setState(() {
        _questionIndex = _questionIndex + 1;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
      body: _questionIndex < questions.length ?
      Quiz(
          questionIndex: _questionIndex, answerQuestion: _answerQuestion, questions: questions,
      ) :
      Result(_totalScore, _quizReset),
    );
  }
}
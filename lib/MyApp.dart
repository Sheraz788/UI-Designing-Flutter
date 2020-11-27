import 'package:flutter/material.dart';
import 'package:flutter_ui_designing/Answer.dart';
import 'package:flutter_ui_designing/questions.dart';

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
      'answers' : ['Red', 'Blue', 'Green', 'Yellow']
    },
    {
      'questionText' : 'What\'s your favorite animal?',
      'answers' : ['Rabbit', 'Elephant', 'Monkey', 'Lion']
    },
    {
      'questionText' : 'What\'s your favorite name?',
      'answers' : ['Maxwell', 'Smith', 'Rahul', 'Ajay']
    },
  ];
  var questionIndex = 0;

  void _answerQuestion(){
      setState(() {
        questionIndex = questionIndex + 1;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
      body: Column(
        children: [
          Questions(questions[questionIndex]['questionText']),
          Answer(_answerQuestion),
          Answer(_answerQuestion),
          Answer(_answerQuestion),
        ],
      ),
    );
  }
}
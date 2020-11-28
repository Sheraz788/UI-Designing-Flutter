import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int scoreResult;
  final Function quizResetHandler;

  Result(this.scoreResult, this.quizResetHandler);

  String get quizResult {
    String resultText;

    if(scoreResult <= 6){
      resultText = 'Very good and innocent.';
    }else if(scoreResult <= 12){
      resultText = 'You are likeable.';
    }else if(scoreResult <= 16){
      resultText = 'You have to improve.';
    }else{
      resultText = 'You are so bad.';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
              quizResult,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        FlatButton(onPressed: quizResetHandler, child: Text('Reset Quiz'))
      ],
    );
  }
}

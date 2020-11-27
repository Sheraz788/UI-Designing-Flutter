import 'package:flutter/material.dart';

class Questions extends StatelessWidget{
  final String question;

  Questions(this.question);


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(20, 20, 20, 40),
      child: Text(
          question,
        style: TextStyle(fontSize: 28, color: Colors.white),
        textAlign: TextAlign.center,
      ),
      color: Colors.blue,
      alignment: Alignment.center,
      transform: Matrix4.rotationZ(0.2),
    );
  }

}
import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  const Question({Key key, this.questionText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(16.0),
      child: Text(
        questionText,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20.0,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}

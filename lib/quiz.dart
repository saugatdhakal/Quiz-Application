import 'package:course/question.dart';
import 'package:flutter/material.dart';

import 'answer.dart';

class Quiz extends StatelessWidget {
  final Function answerQuestion;
  final int questionIndex;
  final List<Map<String, Object>> questions;

  Quiz({
    @required this.answerQuestion,
    @required this.questions,
    @required this.questionIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questionText: questions[questionIndex]['questionText'],
        ),
        ...(questions[questionIndex]['answers']
                as List<Map<String,Object>>) //Dyanamic way of making wigets
            .map((answer) {
          return Answer(()=> answerQuestion(answer['Score']), answer['text']); /*annomus function is passed with address and 
                                                                                when user click that function will be called and send*/
        }).toList()
      ],
    );
  }
}

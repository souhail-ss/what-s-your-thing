import 'package:flutter/material.dart';
import 'package:myapp2/question.dart';

import 'package:myapp2/answer.dart';

class Quiz extends StatelessWidget {
  var questions;
  var answerQuestions;
  var indexQuestions;
  Quiz(this.questions, this.answerQuestions, this.indexQuestions);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[indexQuestions]["Question"] as String),
        ...(questions[indexQuestions]["Answers"] as List).map((answer) =>
            Answer(() => answerQuestions(answer["Score"] as int),
                answer["Answer"])),
      ],
    );
  }
}

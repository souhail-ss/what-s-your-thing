import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  VoidCallback answerQuestions;
  String answer;

  Answer(this.answerQuestions, this.answer);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style:
            ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.red)),
        onPressed: answerQuestions,
        child: Text(answer, style: const TextStyle(fontSize: 20)),
      ),
    );
  }
}

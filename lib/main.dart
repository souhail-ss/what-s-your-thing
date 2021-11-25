import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:myapp2/quiz.dart';
import 'package:myapp2/result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int indexQuestions = 0;
  int result = 0;

  var questions = [
    {
      "Question": "what is your favorite color ?",
      "Answers": [
        {
          "Answer": "blue",
          "Score": 290,
        },
        {"Answer": "Purple", "Score": 200},
        {"Answer": "Pink", "Score": 230},
      ]
    },
    {
      "Question": "what is your favorite animal ?",
      "Answers": [
        {"Answer": "Fox", "Score": 500},
        {"Answer": "cat", "Score": 200},
        {"Answer": "dog", "Score": 100},
      ]
    },
    {
      "Question": "what is your favorite type of people ?",
      "Answers": [
        {"Answer": "blaablaa", "Score": 220},
        {"Answer": "nice ;)", "Score": 60},
        {"Answer": "-_-", "Score": 20},
      ]
    },
    // "what is your favorite color ?",
    // "what is your fav animal ?"
  ];

  void answerQuestions(int score) {
    setState(() {
      indexQuestions++;
    });
    result = result + score;
    return;
  }

  void reset() {
    setState(() {
      indexQuestions = 0;
      result = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    // print(questions[indexQuestions]["Question"]);
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("TP"),
            shadowColor: Color(hashCode),
          ),
          body: (questions.length > indexQuestions)
              ? Quiz(questions, answerQuestions, indexQuestions)
              : Result(result, reset)),
    );
  }
}

// class Question extends StatelessWidget {
//   Question(this.question);

//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Text();
//   }
// }

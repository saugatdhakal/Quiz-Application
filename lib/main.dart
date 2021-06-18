import 'package:course/result.dart';
import 'package:flutter/material.dart';
import './quiz.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;

  static final questions = [
    {
      'questionText': 'Which is a single integrated circuit',
      'answers': [
        {"text": "Gate", "Score": 10},
        {"text": "Mother Board", "Score": 0},
        {"text": "Mouse", "Score": 0},
        {"text": "Chip", "Score": 0},
      ],
    },
    {
      'questionText': 'Neutron was discovered by  ',
      'answers': [
        {"text": "Marie Curie", "Score": 0},
        {"text": "Mendeleef", "Score": 0},
        {"text": "Rutherford", "Score": 0},
        {"text": "Chadwick", "Score": 10},
      ],
    },
    {
      'questionText': 'Black soils are best suited for the cultivation of ?',
      'answers': [
        {"text": "Cotton", "Score": 10},
        {"text": "Rice", "Score": 0},
        {"text": "Cereals", "Score": 0},
        {"text": "Sugarcane", "Score": 0},
      ],
    },
    {
      'questionText':
          'The first wave of Aryan immigration into India began in ?',
      'answers': [
        {"text": "500 BC", "Score": 0},
        {"text": "1000 BC", "Score": 0},
        {"text": "1500 BC", "Score": 10},
        {"text": "1000 A.D.", "Score": 0},
      ],
    },
    {
      'questionText': '2010 World Cup football tournament was held in?',
      'answers': [
        {"text": "South Africa", "Score": 10},
        {"text": "Germany", "Score": 0},
        {"text": "Austria", "Score": 0},
        {"text": "Turin", "Score": 0},
      ],
    },
  ];
  var _totalScore = 0;
  void answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      questionIndex++;
    });
  }

  void resetQuiz() {
    setState(() {
      questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text("Coder Creed"),
          ),
          body: questionIndex < questions.length
              ? Quiz(
                  answerQuestion: answerQuestion,
                  questions: questions,
                  questionIndex: questionIndex,
                )
              : Result(
                  totalScore: _totalScore,
                  reset: resetQuiz,
                )),
    );
  }
}

import 'dart:html';
import 'app_brain.dart';
import 'package:flutter/material.dart';
import 'question.dart';

AppBrain appBrain = AppBrain();

void main() {
  runApp(const QuizApp());
}

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.pink[50],
        appBar: AppBar(
          title: const Text('Quizz'),
          backgroundColor: Colors.purple[400],
        ),
        body: const Padding(
          padding: EdgeInsets.all(24.0),
          child: QuizPage(),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Widget> anwserResult = [];

  void checkAnswer(bool asnwer) {
    bool correctAnswer = appBrain.questionGroupe[questionNumber].questionAnswer;
    setState(() {
      if (asnwer == correctAnswer) {
        anwserResult.add(
          const Padding(
            padding: EdgeInsets.all(3.0),
            child: Icon(
              Icons.thumb_up_off_alt_sharp,
              color: Colors.green,
            ),
          ),
        );
      } else {
        anwserResult.add(
          const Padding(
            padding: EdgeInsets.all(3.0),
            child: Icon(
              Icons.thumb_down,
              color: Colors.red,
            ),
          ),
        );
      }
      if (questionNumber < appBrain.questionGroupe.length - 1) {
        questionNumber++;
      } else {
        questionNumber = 0;
      }
    });
  }

  int questionNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: anwserResult,
        ),
        Expanded(
          flex: 5,
          child: Column(
            children: [
              Image.asset(
                appBrain.questionGroupe[questionNumber].questionImage,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                appBrain.questionGroupe[questionNumber].questionText,
                style: const TextStyle(
                  fontSize: 25,
                ),
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: TextButton(
              onPressed: () {
                checkAnswer(true);
              },
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.indigoAccent,
              ),
              child: const Text(
                'True',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: TextButton(
              onPressed: () {
                checkAnswer(false);
              },
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: const Color.fromARGB(255, 237, 107, 21),
              ),
              child: const Text(
                'False',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

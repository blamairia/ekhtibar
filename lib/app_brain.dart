import 'package:ekhtibar/question.dart';

class AppBrain {
  // ignore: prefer_final_fields
  int _questionNumber = 0;

  final List<Question> _questionGroupe = [
    Question('the number of the planets in our solar system is 8',
        'images/image-1.jpg', true),
    Question('Cats eat meat', 'images/image-2.jpg', true),
    Question('China is located in Africa', 'images/image-3.jpg', false),
    Question('The earth is Flat', 'images/image-4.jpg', false),
    Question('Human can live wihou meat', 'images/image-5.jpg', true),
    Question('The sun orbit around the earth and around the moon',
        'images/image-6.jpg', false),
    Question('Animals do not feel pain', 'images/image-7.jpg', false),
  ];

  String getQuestionText() {
    return _questionGroupe[_questionNumber].questionText;
  }

  String getQuestionImage() {
    return _questionGroupe[_questionNumber].questionImage;
  }

  bool getQuestionAnswer() {
    return _questionGroupe[_questionNumber].questionAnswer;
  }

  List<Question> getQ() {
    return _questionGroupe;
  }

  void nextQuestion() {
    if (_questionNumber < _questionGroupe.length - 1) {
      _questionNumber++;
    }
  }

  bool isFinished() {
    if (_questionNumber == _questionGroupe.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}

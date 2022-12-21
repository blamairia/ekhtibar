import 'package:ekhtibar/question.dart';

class AppBrain {
  List<Question> _questionGroupe = [
    Question('the number of the planets in our solar system is 8',
        'images/image-1.jpg', true),
    Question('Cats eat meat', 'images/image-2.jpg', true),
    Question('China is located in Africa', 'images/image-3.jpg', false),
    Question('The earth is Flat', 'images/image-4.jpg', false),
    Question('The earth is Flat', 'images/image-5.jpg', false),
    Question('The earth is Flat', 'images/image-6.jpg', false),
    Question('The earth is Flat', 'images/image-7.jpg', false),
  ];

  String getQuestionText(int questionNumber) {
    return _questionGroupe[questionNumber].questionText;
  }

  String getQuestionImage(int questionNumber) {
    return _questionGroupe[questionNumber].questionImage;
  }

  bool getQuestionAnswer(int questionNumber) {
    return _questionGroupe[questionNumber].questionAnswer;
  }

  List<Question> getQ() {
    return _questionGroupe;
  }
}

import 'question.dart';

class QuizBrain {
  int _qutrack = 0;
  List<Question> _questionbank = [
    Question('Tanvir is a bad boy.', true),
    Question('Tanvir is a goood boy.', false),
    Question('Tanvir is very bad boy.', true),
  ];

  void goNextQu() {
    if (_qutrack < _questionbank.length - 1) {
      _qutrack++;
    } else
      _qutrack = 0;
  }

  String getQuText() {
    return _questionbank[_qutrack].qu;
  }

  bool getAns() {
    return _questionbank[_qutrack].ans;
  }
}

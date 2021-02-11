import 'question.dart';

class QuizBrain {
  int _qutrack = 0;
  List<Question> _questionbank = [
    Question('First Question', true),
    Question('Second Question', false),
    Question('Third Question', true),
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

import 'questions.dart';

class QuizBrain {
  int _questionNumber = 0;
  final List<Question> _questionBank = [
    Question(q: 'You can lead a cow down stairs but not up stairs.', a: false),
    Question(
        q: 'Approximately one quarter of human bones are in the feet.',
        a: true),
    Question(q: 'A slug\'s blood is green.', a: true),
    Question(
        q: 'The Amazon Rainforest produces 20% of the world\'s oxygen',
        a: false),
    Question(q: 'Marie Curie discovered radium and polonium', a: true),
    Question(q: 'The currency of Japan is called the yen', a: true),
    Question(
        q: 'Lionel Messi and Cristiano Ronaldo have both won the FIFA Ballon d\'Or award five times each.',
        a: true),
    Question(
        q: 'Pele, widely regarded as one of the greatest football players of all time, won the FIFA World Cup three times with Brazil.',
        a: true),
    Question(
        q: 'Lionel Messi has won the FIFA World Cup with Argentina.', a: true),
    Question(
        q: ' Cristiano Ronaldo has played for both Manchester United and Manchester City.',
        a: false),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getAnswerText() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber < _questionBank.length - 1) {
      return false;
    } else {
      return true;
      print('We\'re in the last question');
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}

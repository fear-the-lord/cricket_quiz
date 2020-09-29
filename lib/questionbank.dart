import 'questions.dart';

class QuestionBank {
  int _questionNumber = 0;
  List<Questions> _questionBrain = [
    Questions('Michael Atherton never hit a six in 33 Ashes Tests?', false),
    Questions(
        'Tom Garrett once played and umpired in the same Ashes Test?', true),
    Questions(
        'Vic Wilson was 12th man for all five Tests of the same Ashes series?',
        true),
    Questions(
        'The last England team to travel all the way to Australia by boat was the 1954/55 tourists?',
        false),
    Questions(
        'Ian Craig’s innings of 38 at Old Trafford in 1956 started on Friday and ended on Tuesday?',
        true),
    Questions('Brian Close was England’s last teenage Ashes cricketer?', false),
    Questions(
        'Shane Warne and Glenn McGrath never shared all ten of England’s wickets in an innings?',
        true),
    Questions(
        'Only one Australian was given out lbw in the 1970/71 Ashes series?',
        false),
    Questions(
        'Shane Warne’s final delivery in Test cricket was hit for four by Steve Harmison?',
        true),
    Questions('Bob Willis bowled 34 no-balls in the 1981 Edgbaston Test?', true)
  ];

  String getQuestionText() {
    return _questionBrain[_questionNumber].questionText;
  }

  void getNextQuestion() {
    _questionNumber++;
  }

  bool getQuestionAnswer() {
    return _questionBrain[_questionNumber].questionAnswer;
  }

  bool endOfQuestions() {
    if (_questionNumber >= _questionBrain.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}

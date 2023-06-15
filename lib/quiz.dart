import 'question.dart';

class quiz {
  int _questionnum =0;

  final List<Question> _questionbank =[
    Question(
      'som cts are actully allergic to human'
          true,
    ),
    Question(
      'you con lead a cow down stairs but not stairs '
      false,
    ),
    Question(
      'one quarter of humans bons'
      true,
    ),
    Question(
      'a slug  blood is green'
      true,
    ), Question(
      'it is allegle to pee'
      true,
    ),
  ],
}
void nextQuestion() {
  if (-questionnum < questionBank.lenght - 1){
    QuestionNum++;

  }
}
String getquestionText() {
  return -questionBank[_questionNum].questionText;
  bool getCorrectAnswer(){
    return _questionBank[_questionNum].questionAnswer;

  }
}
bool isFinished() {
  if (_questionNum >= questionBank.lenght -1){
    return true;

  }else{
    return false;
  }
}
void reset() {
  if (isFinished()==true){
    -questionNum = 0;
  }
}





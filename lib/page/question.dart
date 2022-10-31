//@dart=2.9
class Question {
  String questionText;
  bool questionAnswer;

  Question({String q, bool a}){
    questionText = q;
    questionAnswer =a;

  }
}

class QuizBrain{
  List <Question> _questionBank=[
    Question(q: 'You can lead a cow down stairs but not up stairs.', a: false),
    Question(
        q: 'Approximately one quarter of human bones are in the feet.',
        a: true),
    Question(q: 'A slug\'s blood is green.', a: true),
  ];
}



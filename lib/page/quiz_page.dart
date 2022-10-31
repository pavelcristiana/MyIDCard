//@dart=2.9
import 'package:i_am_rich/widget/navigation_drawer_widget.dart';
import 'package:i_am_rich/provider/navigation_provider.dart';
import 'package:flutter/material.dart';
import 'package:i_am_rich/page/question.dart';

QuizBrain quizBrain = QuizBrain();

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        appBar: AppBar(
          title: Text('Quiz'),
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> scoreKeeper = [];

  int questionNumber = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: NavigationDrawerWidget(),
        appBar: AppBar(
          title: Text('Quiz'),
          backgroundColor: Colors.black,
        ),
        backgroundColor: Colors.grey,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                flex: 5,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Center(
                    child: Text(
                      quizBrain.questionBank[questionNumber].questionText,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 30.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: MaterialButton(
                    textColor: Colors.green,
                    color: Colors.white70,
                    child: Text(
                      'TRUE',
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 20.0,
                      ),
                    ),
                    onPressed: () {
                      bool correctAnswer =
                          quizBrain.questionBank[questionNumber].questionAnswer;
                      if (correctAnswer == true) {
                        print('You choose the correct answer');
                      } else {
                        print('You choose the wrong answer');
                      }
                      setState(() {
                        questionNumber++;
                        print(questionNumber);
                      });
                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: MaterialButton(
                    color: Colors.white70,
                    child: Text(
                      'FALSE',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.red,
                      ),
                    ),
                    onPressed: () {
                      bool correctAnswer =
                          quizBrain.questionBank[questionNumber].questionAnswer;
                      if (correctAnswer == false) {
                        print('You choose the correct answer');
                      } else {
                        print('You choose the wrong answer');
                      }
                      setState(() {
                        questionNumber++;
                        print(questionNumber);
                      });
                    },
                  ),
                ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.check,
                    color: Colors.green,
                  ),
                  Icon(
                    Icons.close,
                    color: Colors.red,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

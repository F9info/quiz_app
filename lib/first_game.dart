import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quiz_app/page_layout.dart';
import 'package:quiz_app/result_page.dart';

import 'game1.dart';

QuizBrain quizBrain = QuizBrain();

class FirstGame extends StatefulWidget {
  const FirstGame({Key? key}) : super(key: key);

  static const routeName = 'first-game';

  @override
  _FirstGameState createState() => _FirstGameState();
}

class _FirstGameState extends State<FirstGame> {
  Timer? _timer;
  int _start = 30;
  double progress = 1.0;
  int correct = 0;
  bool buttonEnable = true;
  Color option1 = Colors.deepPurple;
  Color option2 = Colors.deepPurple;
  Color option3 = Colors.deepPurple;
  Color option4 = Colors.deepPurple;

  gameEnd() {
    _timer!.cancel();
  }

  void startTimer() {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
      (Timer timer) => setState(
        () {
          _start >= 1 ? progress = ((_start - 1) * 2) / 10 : progress = 0;
          if (_start < 1) {
            if (quizBrain.isFinished() == true) {
              gameEnd();

              Navigator.pushNamed(context, ResultPage.routeName, arguments: correct);
            } else {
              _timer!.cancel();
              quizBrain.nextQuestion();
              _start = 30;
              startTimer();
            }
          } else {
            _start = _start - 1;
          }
        },
      ),
    );
  }

  @override
  void initState() {
    quizBrain.reset();
    startTimer();
    super.initState();
  }

  @override
  void dispose() {
    _timer!.cancel();
    super.dispose();
  }

  @override
  void deactivate() {
    _timer!.cancel();
    super.deactivate();
  }

  void checkAnswer(int userPickedAnswer) {
    int correctAnswer = quizBrain.getCorrectAnswer();

    setState(() {
      if (userPickedAnswer == correctAnswer) {
        switch(userPickedAnswer) {
          case 1: {
            option1 = Colors.green;
          }
          break;
          case 2: {
            option2 = Colors.green;
          }
          break;
          case 3: {
            option3 = Colors.green;
          }
          break;
          case 4: {
            option4 = Colors.green;
          }
          break;
          default: {

          }
          break;
        }
        correct = correct + 1;
      }else{
        switch(userPickedAnswer) {
          case 1: {
            option1 = Colors.red;
          }
          break;
          case 2: {
            option2 = Colors.red;
          }
          break;
          case 3: {
            option3 = Colors.red;
          }
          break;
          case 4: {
            option4 = Colors.red;
          }
          break;
          default: {

          }
          break;
        }
      }
      _timer!.cancel();
      buttonEnable = false;
      Timer(Duration(seconds: 1), () {
        if (quizBrain.isFinished() == true) {
          gameEnd();

          Navigator.pushNamed(context, ResultPage.routeName, arguments: correct);
        } else {
          quizBrain.nextQuestion();
          _start = 30;
          buttonEnable = true;
          option1 = Colors.deepPurple;
          option2 = Colors.deepPurple;
          option3 = Colors.deepPurple;
          option4 = Colors.deepPurple;
          startTimer();
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return PageLayout(
        pageAppBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: Text('First Game'),
          centerTitle: true,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              color: Colors.deepPurple,
              padding: EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(quizBrain.getRoundCount(),
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontFamily: 'Poppins Bold')),
                  Text(_start.toString(),
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontFamily: 'Poppins Bold'))
                ],
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              quizBrain.getQuestion(),
              style: TextStyle(
                  color: Colors.deepPurple,
                  fontSize: 30.0,
                  fontFamily: "Poppins Bold"),
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildOptionBox(quizBrain.getOption1(), 1, option1),
                SizedBox(width: 20.0),
                buildOptionBox(quizBrain.getOption2(), 2, option2),
              ],
            ),
            SizedBox(height: 20.0),
            Row(
              children: [
                buildOptionBox(quizBrain.getOption3(), 3, option3),
                SizedBox(width: 20.0),
                buildOptionBox(quizBrain.getOption4(), 4, option4),
              ],
            )
          ],
        ));
  }

  Expanded buildOptionBox(String optionText, int option, Color color) {
    return Expanded(
        child: ElevatedButton(
            onPressed: () {
                buttonEnable ? checkAnswer(option) : null;
            },
            child: Text(
              optionText,
              style: TextStyle(fontSize: 20.0, fontFamily: "Poppins Regular"),
            ),
            style: ElevatedButton.styleFrom(
                primary: color, padding: EdgeInsets.all(10.0),
            ),
        ));
  }
}

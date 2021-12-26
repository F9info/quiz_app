import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/first_game.dart';
import 'package:quiz_app/page_layout.dart';

class CountDown extends StatefulWidget {
  const CountDown({Key? key}) : super(key: key);

  static const routeName = 'countdown';

  @override
  _CountDownState createState() => _CountDownState();
}

class _CountDownState extends State<CountDown> {

  Timer? _timer;
  int _start = 4;
  bool text = true;
  bool number = false;

  void startTimer() {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
          (Timer timer) => setState(
            () {
              if(_start ==4){
                text = false;
                number = true;
              }
          if (_start < 2) {
            _timer!.cancel();
            Navigator.pushNamed(context, FirstGame.routeName);
          } else {
            _start = _start - 1;
          }
        },
      ),
    );
  }

  @override
  void initState() {
    startTimer();
    super.initState();
  }

  @override
  void dispose() {
    _timer!.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageLayout(
      pageAppBar: null,
      child: Container(
        color: Colors.deepPurple,
        child: Center(
          child:
          Visibility(
            visible: number,
            child: Text(
              _start.toString(),
              style: const TextStyle(
                  fontSize: 350.0,
                  fontFamily: 'Poppins Bold',
                  color: Colors.white
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}

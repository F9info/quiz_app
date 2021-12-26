import 'package:flutter/material.dart';
import 'package:quiz_app/countdown.dart';
import 'package:quiz_app/page_layout.dart';

class ResultPage extends StatefulWidget {
  const ResultPage({Key? key, this.correctAnswerCount=0}) : super(key: key);
  final int correctAnswerCount;

  static const routeName = 'result-page';

  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return PageLayout(
      pageAppBar: PreferredSize(
        preferredSize: const Size.fromHeight(80.0),
        child: Center(
          child: AppBar(
            centerTitle: true,
            title: Text(
              'Result Page',
              style: TextStyle(fontSize: 30.0, fontFamily: 'Poppins Medium'),
            ),
            backgroundColor: Colors.deepPurple,
            shape: const RoundedRectangleBorder(
              borderRadius:
              BorderRadius.only(bottomLeft: Radius.circular(60.0)),
            ),
            backwardsCompatibility: false,
          ),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Good Job!',
            style: TextStyle(
              fontFamily: 'Poppins Bold',
              fontSize: 25.0,
              color: Colors.black
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 15.0),
          Container(
            child: Column(
              children: [
                Image.asset('images/win.png'),
                Text(
                  'Score : '+widget.correctAnswerCount.toString()+'/5',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Poppins Bold',
                    fontSize: 20.0
                  ),
                  textAlign: TextAlign.center,
                ),
                ElevatedButton(onPressed: ()=>Navigator.pushNamed(context, CountDown.routeName), child: Text('Play Again'))
              ],
            ),
            color: Colors.indigo,
            padding: EdgeInsets.all(20.0),
          )
        ],
      ),
    );
  }
}

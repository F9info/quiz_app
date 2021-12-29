// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:quiz_app/page_layout.dart';

class ResultPage extends StatefulWidget {
  const ResultPage({Key? key, this.correctAnswerCount = 0}) : super(key: key);
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
        preferredSize: const Size.fromHeight(60.0),
        child: Center(
          child: AppBar(
            titleSpacing: 10,
            leading: InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 30.0,
                  child: ClipRRect(
                    child: Image.asset(
                      "images/varaprasad.jpg",
                      height: 50,
                      fit: BoxFit.fitWidth,
                      alignment: Alignment.topCenter,
                    ),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                ),
              ),
              // Image.asset("images/varaprasad.jpg", width:100,),
            ),
            // centerTitle: true,
            title: Text(
              'Vara Prasad',
              style: TextStyle(fontSize: 20.0, fontFamily: 'Poppins Medium'),
            ),
            backgroundColor: Colors.deepPurple,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(0.0)),
            ),
            // ignore: deprecated_member_use
            backwardsCompatibility: false,
            // ignore: prefer_const_literals_to_create_immutables
            // actions: [
            //   Padding(
            //     padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
            //     child: Icon(Icons.edit),
            //   ),
            // ],
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
                color: Colors.black),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 15.0),
          Text(
            'Your results will be shortly announced !',
            style: TextStyle(
                fontFamily: 'Poppins Bold',
                fontSize: 20.0,
                height: 1.2,
                color: Colors.black),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 15.0),
          Container(
            child: Column(
              children: [
                Image.asset('images/win.png'),
                // Text(
                //   'Score : '+widget.correctAnswerCount.toString()+'/5',
                //   style: TextStyle(
                //     color: Colors.white,
                //     fontFamily: 'Poppins Bold',
                //     fontSize: 20.0
                //   ),
                //   textAlign: TextAlign.center,
                // ),
                // ElevatedButton(onPressed: ()=>Navigator.pushNamed(context, CountDown.routeName), child: Text('Play Again'))
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

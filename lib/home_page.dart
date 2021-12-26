import 'package:flutter/material.dart';
import 'package:quiz_app/countdown.dart';
import 'package:quiz_app/page_layout.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return PageLayout(
      pageAppBar: PreferredSize(
        preferredSize: const Size.fromHeight(80.0),
        child: Center(
          child: AppBar(
            centerTitle: true,
            title: Text(
              'Quiz App',
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
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 30.0,
          ),
          QuizBox(
            firstColor: Colors.deepPurple,
            secondColor: Colors.blue,
            icon: Icons.stream,
            title: 'General Knowledge',
          ),
          const SizedBox(
            height: 30.0,
          ),
          QuizBox(
            firstColor: Colors.redAccent,
            secondColor: Colors.orangeAccent,
            icon: Icons.home,
            title: 'PHP',
          ),
          const SizedBox(
            height: 30.0,
          ),
          QuizBox(
            firstColor: Colors.pink,
            secondColor: Colors.purple,
            icon: Icons.ad_units,
            title: 'Flutter',
          ),
        ],
      ),
    );
  }
}

class QuizBox extends StatelessWidget {
  QuizBox(
      {Key? key,
        required this.firstColor,
        required this.secondColor,
        required this.icon,
        required this.title})
      : super(key: key);
  Color firstColor;
  Color secondColor;
  IconData icon;
  String title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, CountDown.routeName);
      },
      child: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20.0),
                bottomRight: Radius.circular(20.0)),
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                firstColor,
                secondColor,
              ],
            ),
            boxShadow: const [
              BoxShadow(
                offset: Offset(2, 2),
                blurRadius: 12,
                color: Color.fromRGBO(0, 0, 0, 0.3),
              ),
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: Colors.white,
              size: 40.0,
            ),
            const SizedBox(height: 5.0),
            const SizedBox(height: 5.0),
            Text(title,
                style: const TextStyle(
                    color: Colors.white,
                    fontFamily: 'Poppins Regular',
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600))
          ],
        ),
      ),
    );
  }
}
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:quiz_app/countdown.dart';
import 'package:quiz_app/edit_page.dart';
import 'package:quiz_app/navigation.dart';
import 'package:quiz_app/page_layout.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return PageLayout(
      pageAppBar: PreferredSize(
        preferredSize: const Size.fromHeight(60.0),
        child: Center(
          child: AppBar(
            titleSpacing: 10,
            leading: InkWell(
              onTap: () => _scaffoldKey.currentState!.openDrawer(),
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
            actions: [
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => EditForm()));
                    },
                    child: Icon(Icons.edit)),
              ),
            ],
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 80.0,
            child: ClipRRect(
              child: Image.asset(
                "images/school_logo.jpg",
                fit: BoxFit.fitWidth,
                alignment: Alignment.topCenter,
              ),
              borderRadius: BorderRadius.circular(50.0),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text("Sant Nirankari",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30.0, fontFamily: 'Poppins Medium')),
          SizedBox(
            height: 10.0,
          ),
          Text(
              "International school of design, Dr.no: 50-81-/1A,Second floor, apollo pharmacy, beside B.V.K. college, Dwaraka Nagar, Visakhapatnam, Andhra Pradesh 530016",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 12.0, fontFamily: 'Poppins Medium')),
          SizedBox(
            height: 30.0,
          ),
          QuizBox(
            firstColor: Colors.deepPurple,
            secondColor: Colors.blue,
            title: 'Since Subject General Knowledge',
          ),
          const SizedBox(
            height: 30.0,
          ),
          // QuizBox(
          //   firstColor: Colors.redAccent,
          //   secondColor: Colors.orangeAccent,
          //   icon: Icons.home,
          //   title: 'PHP',
          // ),
          // const SizedBox(
          //   height: 30.0,
          // ),
          // QuizBox(
          //   firstColor: Colors.pink,
          //   secondColor: Colors.purple,
          //   icon: Icons.ad_units,
          //   title: 'Flutter',
          // ),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class QuizBox extends StatelessWidget {
  QuizBox(
      {Key? key,
      required this.firstColor,
      required this.secondColor,
      required this.title})
      : super(key: key);
  Color firstColor;
  Color secondColor;

  String title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
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
            Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Poppins Regular',
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 15),
            Text(
              "Start Quiz",
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Poppins Regular',
                fontSize: 24.0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

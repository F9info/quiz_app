import 'package:flutter/material.dart';
import 'package:quiz_app/home_page.dart';
import 'package:quiz_app/navigation.dart';

class PageLayout extends StatefulWidget {
   PageLayout({Key? key, required this.child, required this.pageAppBar}) : super(key: key);
  final Widget child;
  
  // ignore: prefer_typing_uninitialized_variables
  final pageAppBar;

  @override
  State<PageLayout> createState() => _PageLayoutState();
}

class _PageLayoutState extends State<PageLayout> {
   final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: NavigationMenu(),
              key: _scaffoldKey,
      backgroundColor: Colors.white,
      appBar: widget.pageAppBar,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: widget.child
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.pushAndRemoveUntil(
            context,
            // ignore: prefer_const_constructors
            MaterialPageRoute(builder: (context) => HomePage()),
                (Route<dynamic> route) => false,
          );
        },
        tooltip: 'Home',
        child: const Icon(Icons.home),
        backgroundColor: Colors.deepPurple,
        elevation: 2.0,
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.pink,
        child: Container(height: 50.0),
        shape: const CircularNotchedRectangle(),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
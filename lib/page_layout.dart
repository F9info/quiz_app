import 'package:flutter/material.dart';
import 'package:quiz_app/home_page.dart';

class PageLayout extends StatefulWidget {
  const PageLayout({Key? key, required this.child, required this.pageAppBar}) : super(key: key);
  final Widget child;
  final pageAppBar;

  @override
  State<PageLayout> createState() => _PageLayoutState();
}

class _PageLayoutState extends State<PageLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
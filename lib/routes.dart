// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:quiz_app/countdown.dart';
import 'package:quiz_app/first_game.dart';
import 'package:quiz_app/home_page.dart';
import 'package:quiz_app/login.dart';
import 'package:quiz_app/result_page.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {


      case '/':        
        return MaterialPageRoute(builder: (_) => LoginPage());
      case CountDown.routeName:
        
        return MaterialPageRoute(builder: (_) => CountDown());
      case FirstGame.routeName:
        
        return MaterialPageRoute(builder: (_) => FirstGame());
      case ResultPage.routeName:
        return MaterialPageRoute(builder: (_) => ResultPage(correctAnswerCount: args as int));
      default:
      // If there is no such named route in the switch statement, e.g. /third
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
        
          title: Text('Error'),
        ),
        body: Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}

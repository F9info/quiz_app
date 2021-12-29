// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:quiz_app/home_page.dart';

// ignore: use_key_in_widget_constructors
class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.deepPurple,
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(30,80,30,30),
              child: Center(
                child: Card(
                  elevation: 12,
                  color:Colors.deepPurple,
                  child: Column(
                    children: <Widget>[
                     
                      Padding(
                        padding: const EdgeInsets.only(top: 100.0),
                        child: Center(
                          // ignore: sized_box_for_whitespace
                          child: Text("Login",
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                      SizedBox(height: 30),
                      Padding(
                        //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: TextField(
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                              hintStyle: TextStyle(color: Colors.white),
                              labelStyle: TextStyle(color: Colors.white),
                              filled: true,
                              fillColor: Colors.deepPurple,
                              border: OutlineInputBorder(),
                              labelText: 'Email',
                              hintText: 'Enter valid email id as abc@gmail.com'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 15.0, right: 15.0, top: 15, bottom: 0),
                        //padding: EdgeInsets.symmetric(horizontal: 15),
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                              hintStyle: TextStyle(color: Colors.white),
                              labelStyle: TextStyle(color: Colors.white),
                              filled: true,
                              fillColor: Colors.deepPurple,
                              border: OutlineInputBorder(),
                              labelText: 'Password',
                              hintText: 'Enter secure password'),
                        ),
                      ),
                      // ignore: deprecated_member_use
                      // FlatButton(
                      //   onPressed: () {},
                      //   child: Text(
                      //     'Forgot Password',
                      //     style: TextStyle(color: Colors.white, fontSize: 15),
                      //   ),
                      // ),
                SizedBox(height:50),
                
                      Container(
                        height: 50,
                        width: 150,
                        decoration: BoxDecoration(
                            color: Colors.green, borderRadius: BorderRadius.circular(20)),
                        // ignore: deprecated_member_use
                        child: FlatButton(
                          onPressed: () {
                            Navigator.push(
                                context, MaterialPageRoute(builder: (_) => HomePage()));
                          },
                          child: Text(
                            'Login',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 100,
                      ),
                      // Text('New User? Create Account', style:TextStyle(color: Colors.white))
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

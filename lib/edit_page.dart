// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:quiz_app/page_layout.dart';

// Create a Form widget.
class EditForm extends StatefulWidget {
  const EditForm({Key? key}) : super(key: key);

  @override
  EditFormState createState() {
    return EditFormState();
  }
}

// Create a corresponding State class.
// This class holds data related to the form.
class EditFormState extends State<EditForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<EditFormState>.
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
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
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Quiz Title",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.red,
                )),
            SizedBox(height: 15),
            TextFormField(
              decoration: InputDecoration(
                hintStyle: TextStyle(color: Colors.deepPurple),
                labelStyle: TextStyle(color: Colors.deepPurple),
                border: OutlineInputBorder(),
                labelText: 'Type your title',
              ),
              // The validator receives the text that the user has entered.
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
            SizedBox(height: 15),
            Card(
              elevation: 8,
              child: ExpansionTile(
                title: Text(
                  "Question 01",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        TextFormField(
                          style: TextStyle(
                              fontSize: 14.0, height: 0.5, color: Colors.black),
                          decoration: InputDecoration(
                            hintStyle: TextStyle(color: Colors.deepPurple),
                            labelStyle: TextStyle(color: Colors.deepPurple),
                            border: OutlineInputBorder(),
                            labelText: 'Type your Question',
                          ),
                          // The validator receives the text that the user has entered.
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                          child: TextFormField(
                            style: TextStyle(
                                fontSize: 14.0,
                                height: 0.5,
                                color: Colors.black),
                            decoration: InputDecoration(
                              hintStyle: TextStyle(color: Colors.deepPurple),
                              labelStyle: TextStyle(color: Colors.deepPurple),
                              border: OutlineInputBorder(),
                              labelText: 'Options 01',
                            ),
                            // The validator receives the text that the user has entered.
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                          child: TextFormField(
                            style: TextStyle(
                                fontSize: 14.0,
                                height: 0.5,
                                color: Colors.black),
                            decoration: InputDecoration(
                              hintStyle: TextStyle(color: Colors.deepPurple),
                              labelStyle: TextStyle(color: Colors.deepPurple),
                              border: OutlineInputBorder(),
                              labelText: 'Options 02',
                            ),
                            // The validator receives the text that the user has entered.
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                          child: TextFormField(
                            style: TextStyle(
                                fontSize: 14.0,
                                height: 0.5,
                                color: Colors.black),
                            decoration: InputDecoration(
                              hintStyle: TextStyle(color: Colors.deepPurple),
                              labelStyle: TextStyle(color: Colors.deepPurple),
                              border: OutlineInputBorder(),
                              labelText: 'Options 03',
                            ),
                            // The validator receives the text that the user has entered.
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                          child: TextFormField(
                            style: TextStyle(
                                fontSize: 14.0,
                                height: 0.5,
                                color: Colors.black),
                            decoration: InputDecoration(
                              hintStyle: TextStyle(color: Colors.deepPurple),
                              labelStyle: TextStyle(color: Colors.deepPurple),
                              border: OutlineInputBorder(),
                              labelText: 'Options 04',
                            ),
                            // The validator receives the text that the user has entered.
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                          ),
                        ),
                        SizedBox(height: 15),
                        Text("Slect the correct Option"),
                        MyStatefulWidget(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Card(
              elevation: 8,
              child: ExpansionTile(
                title: Text(
                  "Question 02",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        TextFormField(
                          style: TextStyle(
                              fontSize: 14.0, height: 0.5, color: Colors.black),
                          decoration: InputDecoration(
                            hintStyle: TextStyle(color: Colors.deepPurple),
                            labelStyle: TextStyle(color: Colors.deepPurple),
                            border: OutlineInputBorder(),
                            labelText: 'Type your Question',
                          ),
                          // The validator receives the text that the user has entered.
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                          child: TextFormField(
                            style: TextStyle(
                                fontSize: 14.0,
                                height: 0.5,
                                color: Colors.black),
                            decoration: InputDecoration(
                              hintStyle: TextStyle(color: Colors.deepPurple),
                              labelStyle: TextStyle(color: Colors.deepPurple),
                              border: OutlineInputBorder(),
                              labelText: 'Options 01',
                            ),
                            // The validator receives the text that the user has entered.
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                          child: TextFormField(
                            style: TextStyle(
                                fontSize: 14.0,
                                height: 0.5,
                                color: Colors.black),
                            decoration: InputDecoration(
                              hintStyle: TextStyle(color: Colors.deepPurple),
                              labelStyle: TextStyle(color: Colors.deepPurple),
                              border: OutlineInputBorder(),
                              labelText: 'Options 02',
                            ),
                            // The validator receives the text that the user has entered.
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                          child: TextFormField(
                            style: TextStyle(
                                fontSize: 14.0,
                                height: 0.5,
                                color: Colors.black),
                            decoration: InputDecoration(
                              hintStyle: TextStyle(color: Colors.deepPurple),
                              labelStyle: TextStyle(color: Colors.deepPurple),
                              border: OutlineInputBorder(),
                              labelText: 'Options 03',
                            ),
                            // The validator receives the text that the user has entered.
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                          child: TextFormField(
                            style: TextStyle(
                                fontSize: 14.0,
                                height: 0.5,
                                color: Colors.black),
                            decoration: InputDecoration(
                              hintStyle: TextStyle(color: Colors.deepPurple),
                              labelStyle: TextStyle(color: Colors.deepPurple),
                              border: OutlineInputBorder(),
                              labelText: 'Options 04',
                            ),
                            // The validator receives the text that the user has entered.
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                          ),
                        ),
                        SizedBox(height: 15),
                          Text("Slect the correct Option"),
                        MyStatefulWidget(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Card(
              elevation: 8,
              child: ExpansionTile(
                title: Text(
                  "Question 03",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        TextFormField(
                          style: TextStyle(
                              fontSize: 14.0, height: 0.5, color: Colors.black),
                          decoration: InputDecoration(
                            hintStyle: TextStyle(color: Colors.deepPurple),
                            labelStyle: TextStyle(color: Colors.deepPurple),
                            border: OutlineInputBorder(),
                            labelText: 'Type your Question',
                          ),
                          // The validator receives the text that the user has entered.
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                          child: TextFormField(
                            style: TextStyle(
                                fontSize: 14.0,
                                height: 0.5,
                                color: Colors.black),
                            decoration: InputDecoration(
                              hintStyle: TextStyle(color: Colors.deepPurple),
                              labelStyle: TextStyle(color: Colors.deepPurple),
                              border: OutlineInputBorder(),
                              labelText: 'Options 01',
                            ),
                            // The validator receives the text that the user has entered.
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                          child: TextFormField(
                            style: TextStyle(
                                fontSize: 14.0,
                                height: 0.5,
                                color: Colors.black),
                            decoration: InputDecoration(
                              hintStyle: TextStyle(color: Colors.deepPurple),
                              labelStyle: TextStyle(color: Colors.deepPurple),
                              border: OutlineInputBorder(),
                              labelText: 'Options 02',
                            ),
                            // The validator receives the text that the user has entered.
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                          child: TextFormField(
                            style: TextStyle(
                                fontSize: 14.0,
                                height: 0.5,
                                color: Colors.black),
                            decoration: InputDecoration(
                              hintStyle: TextStyle(color: Colors.deepPurple),
                              labelStyle: TextStyle(color: Colors.deepPurple),
                              border: OutlineInputBorder(),
                              labelText: 'Options 03',
                            ),
                            // The validator receives the text that the user has entered.
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                          child: TextFormField(
                            style: TextStyle(
                                fontSize: 14.0,
                                height: 0.5,
                                color: Colors.black),
                            decoration: InputDecoration(
                              hintStyle: TextStyle(color: Colors.deepPurple),
                              labelStyle: TextStyle(color: Colors.deepPurple),
                              border: OutlineInputBorder(),
                              labelText: 'Options 04',
                            ),
                            // The validator receives the text that the user has entered.
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                          ),
                        ),
                          SizedBox(height: 15),
                          Text("Slect the correct Option"),
                        MyStatefulWidget(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Card(
              elevation: 8,
              child: ExpansionTile(
                title: Text(
                  "Question 04",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        TextFormField(
                          style: TextStyle(
                              fontSize: 14.0, height: 0.5, color: Colors.black),
                          decoration: InputDecoration(
                            hintStyle: TextStyle(color: Colors.deepPurple),
                            labelStyle: TextStyle(color: Colors.deepPurple),
                            border: OutlineInputBorder(),
                            labelText: 'Type your Question',
                          ),
                          // The validator receives the text that the user has entered.
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                          child: TextFormField(
                            style: TextStyle(
                                fontSize: 14.0,
                                height: 0.5,
                                color: Colors.black),
                            decoration: InputDecoration(
                              hintStyle: TextStyle(color: Colors.deepPurple),
                              labelStyle: TextStyle(color: Colors.deepPurple),
                              border: OutlineInputBorder(),
                              labelText: 'Options 01',
                            ),
                            // The validator receives the text that the user has entered.
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                          child: TextFormField(
                            style: TextStyle(
                                fontSize: 14.0,
                                height: 0.5,
                                color: Colors.black),
                            decoration: InputDecoration(
                              hintStyle: TextStyle(color: Colors.deepPurple),
                              labelStyle: TextStyle(color: Colors.deepPurple),
                              border: OutlineInputBorder(),
                              labelText: 'Options 02',
                            ),
                            // The validator receives the text that the user has entered.
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                          child: TextFormField(
                            style: TextStyle(
                                fontSize: 14.0,
                                height: 0.5,
                                color: Colors.black),
                            decoration: InputDecoration(
                              hintStyle: TextStyle(color: Colors.deepPurple),
                              labelStyle: TextStyle(color: Colors.deepPurple),
                              border: OutlineInputBorder(),
                              labelText: 'Options 03',
                            ),
                            // The validator receives the text that the user has entered.
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                          child: TextFormField(
                            style: TextStyle(
                                fontSize: 14.0,
                                height: 0.5,
                                color: Colors.black),
                            decoration: InputDecoration(
                              hintStyle: TextStyle(color: Colors.deepPurple),
                              labelStyle: TextStyle(color: Colors.deepPurple),
                              border: OutlineInputBorder(),
                              labelText: 'Options 04',
                            ),
                            // The validator receives the text that the user has entered.
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                          ),
                        ),
                          SizedBox(height: 15),
                          Text("Slect the correct Option"),
                        MyStatefulWidget(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Card(
              elevation: 8,
              child: ExpansionTile(
                title: Text(
                  "Question 05",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        TextFormField(
                          style: TextStyle(
                              fontSize: 14.0, height: 0.5, color: Colors.black),
                          decoration: InputDecoration(
                            hintStyle: TextStyle(color: Colors.deepPurple),
                            labelStyle: TextStyle(color: Colors.deepPurple),
                            border: OutlineInputBorder(),
                            labelText: 'Type your Question',
                          ),
                          // The validator receives the text that the user has entered.
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                          child: TextFormField(
                            style: TextStyle(
                                fontSize: 14.0,
                                height: 0.5,
                                color: Colors.black),
                            decoration: InputDecoration(
                              hintStyle: TextStyle(color: Colors.deepPurple),
                              labelStyle: TextStyle(color: Colors.deepPurple),
                              border: OutlineInputBorder(),
                              labelText: 'Options 01',
                            ),
                            // The validator receives the text that the user has entered.
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                          child: TextFormField(
                            style: TextStyle(
                                fontSize: 14.0,
                                height: 0.5,
                                color: Colors.black),
                            decoration: InputDecoration(
                              hintStyle: TextStyle(color: Colors.deepPurple),
                              labelStyle: TextStyle(color: Colors.deepPurple),
                              border: OutlineInputBorder(),
                              labelText: 'Options 02',
                            ),
                            // The validator receives the text that the user has entered.
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                          child: TextFormField(
                            style: TextStyle(
                                fontSize: 14.0,
                                height: 0.5,
                                color: Colors.black),
                            decoration: InputDecoration(
                              hintStyle: TextStyle(color: Colors.deepPurple),
                              labelStyle: TextStyle(color: Colors.deepPurple),
                              border: OutlineInputBorder(),
                              labelText: 'Options 03',
                            ),
                            // The validator receives the text that the user has entered.
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                          child: TextFormField(
                            style: TextStyle(
                                fontSize: 14.0,
                                height: 0.5,
                                color: Colors.black),
                            decoration: InputDecoration(
                              hintStyle: TextStyle(color: Colors.deepPurple),
                              labelStyle: TextStyle(color: Colors.deepPurple),
                              border: OutlineInputBorder(),
                              labelText: 'Options 04',
                            ),
                            // The validator receives the text that the user has entered.
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                    SizedBox(height: 15),
                          Text("Slect the correct Option"),
                        MyStatefulWidget(),
                ],
              ),
            ),
            Card(
              elevation: 8,
              child: ExpansionTile(
                title: Text(
                  "Question 06",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        TextFormField(
                          style: TextStyle(
                              fontSize: 14.0, height: 0.5, color: Colors.black),
                          decoration: InputDecoration(
                            hintStyle: TextStyle(color: Colors.deepPurple),
                            labelStyle: TextStyle(color: Colors.deepPurple),
                            border: OutlineInputBorder(),
                            labelText: 'Type your Question',
                          ),
                          // The validator receives the text that the user has entered.
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                          child: TextFormField(
                            style: TextStyle(
                                fontSize: 14.0,
                                height: 0.5,
                                color: Colors.black),
                            decoration: InputDecoration(
                              hintStyle: TextStyle(color: Colors.deepPurple),
                              labelStyle: TextStyle(color: Colors.deepPurple),
                              border: OutlineInputBorder(),
                              labelText: 'Options 01',
                            ),
                            // The validator receives the text that the user has entered.
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                          child: TextFormField(
                            style: TextStyle(
                                fontSize: 14.0,
                                height: 0.5,
                                color: Colors.black),
                            decoration: InputDecoration(
                              hintStyle: TextStyle(color: Colors.deepPurple),
                              labelStyle: TextStyle(color: Colors.deepPurple),
                              border: OutlineInputBorder(),
                              labelText: 'Options 02',
                            ),
                            // The validator receives the text that the user has entered.
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                          child: TextFormField(
                            style: TextStyle(
                                fontSize: 14.0,
                                height: 0.5,
                                color: Colors.black),
                            decoration: InputDecoration(
                              hintStyle: TextStyle(color: Colors.deepPurple),
                              labelStyle: TextStyle(color: Colors.deepPurple),
                              border: OutlineInputBorder(),
                              labelText: 'Options 03',
                            ),
                            // The validator receives the text that the user has entered.
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                          child: TextFormField(
                            style: TextStyle(
                                fontSize: 14.0,
                                height: 0.5,
                                color: Colors.black),
                            decoration: InputDecoration(
                              hintStyle: TextStyle(color: Colors.deepPurple),
                              labelStyle: TextStyle(color: Colors.deepPurple),
                              border: OutlineInputBorder(),
                              labelText: 'Options 04',
                            ),
                            // The validator receives the text that the user has entered.
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                    SizedBox(height: 15),
                          Text("Slect the correct Option"),
                        MyStatefulWidget(),
                ],
              ),
            ),
            Card(
              elevation: 8,
              child: ExpansionTile(
                title: Text(
                  "Question 07",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        TextFormField(
                          style: TextStyle(
                              fontSize: 14.0, height: 0.5, color: Colors.black),
                          decoration: InputDecoration(
                            hintStyle: TextStyle(color: Colors.deepPurple),
                            labelStyle: TextStyle(color: Colors.deepPurple),
                            border: OutlineInputBorder(),
                            labelText: 'Type your Question',
                          ),
                          // The validator receives the text that the user has entered.
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                          child: TextFormField(
                            style: TextStyle(
                                fontSize: 14.0,
                                height: 0.5,
                                color: Colors.black),
                            decoration: InputDecoration(
                              hintStyle: TextStyle(color: Colors.deepPurple),
                              labelStyle: TextStyle(color: Colors.deepPurple),
                              border: OutlineInputBorder(),
                              labelText: 'Options 01',
                            ),
                            // The validator receives the text that the user has entered.
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                          child: TextFormField(
                            style: TextStyle(
                                fontSize: 14.0,
                                height: 0.5,
                                color: Colors.black),
                            decoration: InputDecoration(
                              hintStyle: TextStyle(color: Colors.deepPurple),
                              labelStyle: TextStyle(color: Colors.deepPurple),
                              border: OutlineInputBorder(),
                              labelText: 'Options 02',
                            ),
                            // The validator receives the text that the user has entered.
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                          child: TextFormField(
                            style: TextStyle(
                                fontSize: 14.0,
                                height: 0.5,
                                color: Colors.black),
                            decoration: InputDecoration(
                              hintStyle: TextStyle(color: Colors.deepPurple),
                              labelStyle: TextStyle(color: Colors.deepPurple),
                              border: OutlineInputBorder(),
                              labelText: 'Options 03',
                            ),
                            // The validator receives the text that the user has entered.
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                          child: TextFormField(
                            style: TextStyle(
                                fontSize: 14.0,
                                height: 0.5,
                                color: Colors.black),
                            decoration: InputDecoration(
                              hintStyle: TextStyle(color: Colors.deepPurple),
                              labelStyle: TextStyle(color: Colors.deepPurple),
                              border: OutlineInputBorder(),
                              labelText: 'Options 04',
                            ),
                            // The validator receives the text that the user has entered.
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                    SizedBox(height: 15),
                          Text("Slect the correct Option"),
                        MyStatefulWidget(),
                ],
              ),
            ),
            Card(
              elevation: 8,
              child: ExpansionTile(
                title: Text(
                  "Question 08",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        TextFormField(
                          style: TextStyle(
                              fontSize: 14.0, height: 0.5, color: Colors.black),
                          decoration: InputDecoration(
                            hintStyle: TextStyle(color: Colors.deepPurple),
                            labelStyle: TextStyle(color: Colors.deepPurple),
                            border: OutlineInputBorder(),
                            labelText: 'Type your Question',
                          ),
                          // The validator receives the text that the user has entered.
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                          child: TextFormField(
                            style: TextStyle(
                                fontSize: 14.0,
                                height: 0.5,
                                color: Colors.black),
                            decoration: InputDecoration(
                              hintStyle: TextStyle(color: Colors.deepPurple),
                              labelStyle: TextStyle(color: Colors.deepPurple),
                              border: OutlineInputBorder(),
                              labelText: 'Options 01',
                            ),
                            // The validator receives the text that the user has entered.
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                          child: TextFormField(
                            style: TextStyle(
                                fontSize: 14.0,
                                height: 0.5,
                                color: Colors.black),
                            decoration: InputDecoration(
                              hintStyle: TextStyle(color: Colors.deepPurple),
                              labelStyle: TextStyle(color: Colors.deepPurple),
                              border: OutlineInputBorder(),
                              labelText: 'Options 02',
                            ),
                            // The validator receives the text that the user has entered.
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                          child: TextFormField(
                            style: TextStyle(
                                fontSize: 14.0,
                                height: 0.5,
                                color: Colors.black),
                            decoration: InputDecoration(
                              hintStyle: TextStyle(color: Colors.deepPurple),
                              labelStyle: TextStyle(color: Colors.deepPurple),
                              border: OutlineInputBorder(),
                              labelText: 'Options 03',
                            ),
                            // The validator receives the text that the user has entered.
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                          child: TextFormField(
                            style: TextStyle(
                                fontSize: 14.0,
                                height: 0.5,
                                color: Colors.black),
                            decoration: InputDecoration(
                              hintStyle: TextStyle(color: Colors.deepPurple),
                              labelStyle: TextStyle(color: Colors.deepPurple),
                              border: OutlineInputBorder(),
                              labelText: 'Options 04',
                            ),
                            // The validator receives the text that the user has entered.
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                          ),
                        ),
                          SizedBox(height: 15),
                          Text("Slect the correct Option"),
                        MyStatefulWidget(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: ElevatedButton(
                onPressed: () {
                  // Validate returns true if the form is valid, or false otherwise.
                  if (_formKey.currentState!.validate()) {
                    // If the form is valid, display a snackbar. In the real world,
                    // you'd often call a server or save the information in a database.
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Processing Data')),
                    );
                  }
                },
                child: const Text('Submit'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

enum SingingCharacter { one, Two, Three, four }

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  SingingCharacter? _character = SingingCharacter.one;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
            width:60,
            child: ListTile(
              minLeadingWidth: 15,
              horizontalTitleGap: 0,
              contentPadding: EdgeInsets.all(0),
              trailing:  Text('One', style:TextStyle(fontSize: 13)),
              title: Radio<SingingCharacter>(
                value: SingingCharacter.one,
                groupValue: _character,
                onChanged: (SingingCharacter? value) {
                  setState(() {
                    _character = value;
                  });
                },
              ),
            ),
          ),
          SizedBox(width:15),
          Container(
              width:60,
            child: ListTile(
               minLeadingWidth: 15,
              horizontalTitleGap: 0,
              contentPadding: EdgeInsets.all(0),
                trailing:  Text('Two', style:TextStyle(fontSize: 13)),
              title: Radio<SingingCharacter>(
                value: SingingCharacter.Two,
                groupValue: _character,
                onChanged: (SingingCharacter? value) {
                  setState(() {
                    _character = value;
                  });
                },
              ),
            ),
          ),
           SizedBox(width:15),
          Container(
             width:60,
            child: ListTile(
               minLeadingWidth: 15,
              horizontalTitleGap: 0,
              contentPadding: EdgeInsets.all(0),
               trailing:  Text('Three'),
              title: Radio<SingingCharacter>(
                value: SingingCharacter.Three,
                groupValue: _character,
                onChanged: (SingingCharacter? value) {
                  setState(() {
                    _character = value;
                  });
                },
              ),
            ),
          ),
           SizedBox(width:15),
          Container(
              width:60,
            child: ListTile(
               minLeadingWidth: 15,
              horizontalTitleGap: 0,
              contentPadding: EdgeInsets.all(0),
                trailing:  Text('Four', style:TextStyle(fontSize: 13)),
              title: Radio<SingingCharacter>(
                value: SingingCharacter.four,
                groupValue: _character,
                onChanged: (SingingCharacter? value) {
                  setState(() {
                    _character = value;
                  });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

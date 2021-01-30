import 'package:flutter/material.dart';

void main() => runApp(QuizApp());

class QuizApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> scorekeeper = [];
  List<String> question = [
    'Tanvir is a good boy!',
    'Tanvir is a bad boy!',
    'Tanvir is a very bad boy!',
  ];
  List<bool> answer = [
    false,
    true,
    true,
  ];
  int qutrack = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 10,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                question[qutrack],
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: FlatButton(
              onPressed: () {
                bool correctans = answer[qutrack];

                if (correctans == true) {
                  print('Right!');
                } else {
                  print('DeadWrong!');
                }
                setState(
                  () {
                    if (qutrack == 2) {
                      qutrack = 0;
                    } else
                      qutrack++;
                  },
                );
              },
              color: Colors.green,
              child: Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: FlatButton(
              onPressed: () {
                bool correctans = answer[qutrack];

                if (correctans == false) {
                  print('Right!');
                } else {
                  print('DeadWrong!');
                }
                setState(
                  () {
                    if (qutrack == 2) {
                      qutrack = 0;
                    } else
                      qutrack++;
                  },
                );
              },
              color: Colors.redAccent,
              child: Text(
                'False',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                ),
              ),
            ),
          ),
        ),
        Row(
          children: scorekeeper,
        )
      ],
    );
  }
}

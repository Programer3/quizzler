import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: Text(
              'Quiz App',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          backgroundColor: Colors.grey[900],
          body: Center(
              child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: QuizArea(),
          )),
        ),
      ),
    );
  }
}

class QuizArea extends StatefulWidget {
  QuizArea({Key? key}) : super(key: key);

  @override
  _QuizAreaState createState() => _QuizAreaState();
}

class _QuizAreaState extends State<QuizArea> {
  List<Widget> scorekeeper = [
    Icon(
      Icons.check_box,
      color: Colors.greenAccent,
    ),
    Icon(
      Icons.cancel,
      color: Colors.redAccent,
    ),
  ];
  List<String> questions = [
    'Your Name is Aman (hehe)',
    'Your Real name is Doggo boii (hehhehehehehehe)',
    'what the dog doin',
  ];
  int questionnumber = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 5 * 2,
          child: Center(
            child: Text(
              questions[questionnumber],
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w200,
                color: Colors.limeAccent,
              ),
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Card(
            elevation: 4,
            shadowColor: Colors.greenAccent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            child: TextButton(
                onPressed: () {
                  setState(
                    () {
                      scorekeeper.add(
                        Icon(
                          Icons.check_box,
                          color: Colors.greenAccent,
                        ),
                      );
                      questionnumber++;
                      print(questionnumber);
                    },
                  );
                },
                child: Text(
                  '--->',
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                )),
            color: Colors.greenAccent,
          ),
        ),
        Expanded(
          flex: 2,
          child: Card(
            elevation: 4,
            shadowColor: Colors.redAccent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            color: Colors.redAccent,
            child: TextButton(
              onPressed: () {
                setState(
                  () {
                    questionnumber--;
                    scorekeeper.removeLast();
                    print(questionnumber);
                  },
                );
              },
              child: Text(
                '<---',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Row(
            children: scorekeeper,
          ),
        ),
      ],
    );
  }
}

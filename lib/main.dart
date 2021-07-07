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
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 5,
          child: Center(
            child: Text(
              'lorem ipsum',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w200,
                color: Colors.limeAccent,
              ),
            ),
          ),
        ),
        Expanded(
          child: Card(
            child: Center(
                child: Text(
              'True',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            )),
            color: Colors.greenAccent,
          ),
        ),
        Expanded(
          child: Card(
            color: Colors.redAccent,
            child: Center(
              child: Text(
                'false',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        Row(
          children: [
            Icon(
              Icons.check_box,
              color: Colors.greenAccent,
            ),
            Icon(
              Icons.cancel,
              color: Colors.redAccent,
            ),
            Icon(
              Icons.check,
              color: Colors.greenAccent,
            ),
            Icon(
              Icons.close,
              color: Colors.redAccent,
            ),
          ],
        ),
      ],
    );
  }
}

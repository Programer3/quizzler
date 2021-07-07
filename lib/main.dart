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
            bottomOpacity: 2,
            toolbarOpacity: 2,
            title: Text('Quiz App'),
          ),
          backgroundColor: Colors.black54,
          body: Center(child: QuizArea()),
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
    return Container(
      child: Card(
        shadowColor: Colors.white,
      ),
    );
  }
}

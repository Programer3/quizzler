import 'package:flutter/material.dart';
import 'questionlistandanswerchecker.dart';

int questionnumber = 0;

List<Widget> scorekeeper = [];
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //This is stale "less"(no state to chage) so app bar will not change change and work with hot reload
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
              'Quiz App (Tap < 11 times only)',
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
  // This will work with hot reload
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
          flex: 5 * 2,
          child: Center(
            child: Text(
              queslist[questionnumber].questiontext,
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
                  anschecker(true);
                  setState(
                    () {
                      questionnumber++;
                      // print(questionnumber);
                    },
                  );
                },
                child: Text(
                  'True',
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
                anschecker(false);
                setState(
                  () {
                    questionnumber++;
                  },
                );
              },
              child: Text(
                'false',
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

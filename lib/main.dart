import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
import 'questionlistandanswerchecker.dart';
import 'questionsclassandcrashpreventer.dart';

int questionnumber = 0;

List<Widget> scorekeeper = [];

Quizbrain quizbrain = Quizbrain();
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
          resizeToAvoidBottomInset: false,
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
  Expanded button(
      {required Color colour, required bool ans, required String showntext}) {
    return Expanded(
      flex: 2,
      child: Card(
        elevation: 4,
        shadowColor: colour,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        child: TextButton(
            onPressed: () {
              anschecker(ans);
              setState(
                () {
                  quizbrain.crashstopper();
                  // print(questionnumber);
                },
              );
            },
            child: Text(
              '$showntext',
              style: TextStyle(
                color: Colors.black87,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            )),
        color: colour,
      ),
    );
  }

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
              quizbrain.getQuestiontext(questionnumber),
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w200,
                color: Colors.limeAccent,
              ),
            ),
          ),
        ),
        button(colour: Colors.greenAccent, ans: true, showntext: 'True'),
        button(colour: Colors.redAccent, ans: false, showntext: 'False'),
        Row(
          children: scorekeeper,
        ),
      ],
    );
  }
}

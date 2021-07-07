import 'questions.dart';
import 'main.dart';
import 'package:flutter/material.dart';

List<Question> queslist = [
  Question(q: 'Your Name is Aman', a: true),
  Question(q: 'Your Name is Aditya', a: false),
  Question(q: 'Your Name is Samitaa', a: false),
  Question(q: 'Your Name is Doggo boi', a: true),
  Question(q: 'You are an Animal', a: true),
  Question(q: 'Earth is blue planet', a: true),
  Question(q: 'Didi antie hai', a: true),
  Question(q: 'Aditya mangu hai', a: true),
  Question(q: 'Didi paagal hai', a: false),
  Question(q: 'Mangu kabadi hai', a: true),
  Question(q: 'Aman accha hai', a: true),
];

void anschecker(bool answer) {
  bool correctans = queslist[questionnumber].questionans;
  if (correctans == answer) {
    scorekeeper.add(
      Icon(
        Icons.check_box,
        color: Colors.greenAccent,
      ),
    );
  } else {
    scorekeeper.add(
      Icon(
        Icons.cancel,
        color: Colors.redAccent,
      ),
    );
  }
}

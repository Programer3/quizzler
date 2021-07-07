import 'package:flutter/material.dart';
import 'main.dart';

class Question {
  late String questiontext;
  late bool questionans;
  Question({required String q, required bool a}) {
    questiontext = q;
    questionans = a;
  }
}

void anschecker(bool answer) {
  if (questionnumber < 12 || questionnumber == 11) {
    bool correctans = quizbrain.getQuestionans(questionnumber);
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
  } else {}
}

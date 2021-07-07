import 'package:flutter/material.dart';
import 'main.dart';
import 'package:audioplayers/audioplayers.dart';

class Question {
  late String questiontext;
  late bool questionans;
  Question({required String q, required bool a}) {
    questiontext = q;
    questionans = a;
  }
}

void audio(String audioname) {
  final player = AudioCache();
  player.play('$audioname.mp3');
}

void anschecker(bool answer) {
  bool correctans = quizbrain.getQuestionans(questionnumber);
  if (correctans == answer) {
    audio('Correct-sound-effect');
    scorekeeper.add(
      Icon(
        Icons.check_box,
        color: Colors.greenAccent,
      ),
    );
  } else {
    audio('Wrong-answer-sound-effect');
    scorekeeper.add(
      Icon(
        Icons.cancel,
        color: Colors.redAccent,
      ),
    );
  }
}

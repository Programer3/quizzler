import 'package:flutter/material.dart';
import 'package:quizzler/main.dart';

void clearbutton() {
  questionnumber = 0;
  scorekeeper.clear();
}

void alertshower() {
  if (questionnumber == 10) {
    AlertDialog(
      title: Text('Choose!'),
      content: Text('The questions are finished, choose "Clear"to restart'),
      actions: [
        TextButton(
          onPressed: () {
            clearbutton();
          },
          child: Text('Clear'),
        ),
      ],
      elevation: 24.0,
    );
  }
}

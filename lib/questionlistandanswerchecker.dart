import 'questionsclassandcrashpreventer.dart';
import 'main.dart';

class Quizbrain {
  List<Question> _queslist = [
    //_ made queslist private and the fxn within class or  can only use it and we will call the fxns defined below
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

  void crashstopper() {
    if (questionnumber < _queslist.length - 1) {
      questionnumber++;
    }
  }

  String getQuestiontext(int questionnumber) {
    return _queslist[questionnumber].questiontext;
  }

  bool getQuestionans(int questionnumber) {
    return _queslist[questionnumber].questionans;
  }
}

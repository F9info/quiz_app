import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  final List<Question> _questionBank = [
    Question(
        question: 'Which of the following is the largest planet?',
        option1: 'Venus',
        option2: 'Mars',
        option3: 'Neptune',
        option4: 'Jupiter',
        answer: 4),
    Question(
        question: 'The first woman prime minister of India was?',
        option1: 'Indira Gandhi',
        option2: 'Rabri Devi',
        option3: 'Sonia Gandhi',
        option4: 'Sonia Gandhi',
        answer: 1),
    Question(
        question: 'The capital of India is?',
        option1: 'Mumbai',
        option2: 'New Delhi',
        option3: 'Ahmedabad',
        option4: 'Kolkata',
        answer: 2),
    Question(
        question: 'Taj Mahal is located in which Indian city?',
        option1: 'Delhi',
        option2: 'Gwalior',
        option3: 'Agra',
        option4: 'Bhopal',
        answer: 3),
    Question(
        question: 'How many spokes does the Ashok Chakra have?',
        option1: '22',
        option2: '23',
        option3: '24',
        option4: '25',
        answer: 3),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestion() {
    return _questionBank[_questionNumber].question;
  }

  String getOption1() {
    return _questionBank[_questionNumber].option1;
  }

  String getOption2() {
    return _questionBank[_questionNumber].option2;
  }

  String getOption3() {
    return _questionBank[_questionNumber].option3;
  }

  String getOption4() {
    return _questionBank[_questionNumber].option4;
  }

  int getCorrectAnswer() {
    return _questionBank[_questionNumber].answer;
  }

  int getQuestionNo() {
    return _questionNumber;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      // ignore: avoid_print
      print('Now returning true');
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
    _questionBank.shuffle();
  }

  String getRoundCount() {
    int currentQuestion = _questionNumber + 1;
    return currentQuestion.toString() + "/" + _questionBank.length.toString();
  }
}

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';


const List questions = [
  {
    "id": 1,
    "question":
        "Flutter is an open-source UI software development kit created by ______",
    "options": ['Apple', 'Google', 'Facebook', 'Microsoft'],
    "answer_index": 1,
  },
  {
    "id": 2,
    "question": "When google release Flutter.",
    "options": ['Jun 2017', 'Jun 2017', 'May 2017', 'May 2018'],
    "answer_index": 2,
  },
  {
    "id": 3,
    "question": "A memory location that holds a single letter or number.",
    "options": ['Double', 'Int', 'Char', 'Word'],
    "answer_index": 2,
  },
  {
    "id": 4,
    "question": "What command do you use to output data to the screen?",
    "options": ['Cin', 'Count>>', 'Cout', 'Output>>'],
    "answer_index": 2,
  },
];
var questionsNumber = 0;
var questionsLength = questions.length.toString();
var percentage = (questionsNumber+1)/questions.length;

class QuizPage extends StatelessWidget {
  const QuizPage({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
  // ignore: avoid_print
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF222831),
        title: const Text('Quiz'),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(40),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 220,
              width: double.infinity,
              margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
              decoration: BoxDecoration(
                color: Colors.transparent,
                image: const DecorationImage(fit: BoxFit.cover, image: AssetImage('assets/image.png')),
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
                child: AutoSizeText(
                  questions[questionsNumber]['question'],
                  style: const TextStyle(fontSize: 24, color: Colors.white),
                  minFontSize: 14,
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              for(var q in questions[questionsNumber]['options']) Options(q),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 40.0, horizontal: 25),
                child: LinearPercentIndicator(
                  lineHeight: 35.0,
                  percent: percentage,
                  center: Text(
                    (questionsNumber+1).toString() + "/" + questionsLength.toString(),
                     style: const TextStyle(
                       color: Colors.white,
                       fontSize: 18,
                       fontWeight: FontWeight.bold,
                    ),
                  ),
                  backgroundColor: const Color(0xFF222831),
                  progressColor: const Color(0xFFEF7B45),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

Padding Options(String answer) {
  return Padding(
    padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
    child: ElevatedButton(
      onPressed: () => {},
      child: AutoSizeText(
        answer,
        style: const TextStyle(
          fontSize: 22, color: Color(0xFF222831),
          fontWeight: FontWeight.bold),
          minFontSize: 10,
          maxLines: 3,
          overflow: TextOverflow.visible,
      ),
      style: ElevatedButton.styleFrom(
        minimumSize: const Size.fromHeight(50),
        primary: const Color(0xFFEF7B45),
        textStyle: const TextStyle(fontSize: 22),
        padding: const EdgeInsets.symmetric(vertical: 14.0, horizontal: 30),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    ),
  );
}

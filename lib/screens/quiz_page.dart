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
    "question": "When did google release Flutter.",
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

class QuizPage extends StatefulWidget {
  const QuizPage({Key? key}) : super(key: key);

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  
refresh() {
  setState(() {});
}

  @override
  Widget build(BuildContext context) {
    int questionsLength = questions.length;
    print("Q number: $questionsNumber");
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
              for(var q in questions[questionsNumber]['options']) Options(option: q, updateParent: refresh ),
              progressBar(questionsNumber, questionsLength),
          ],
        ),
      ),
    );
  }
}

Padding progressBar(int qNumber, int qLength) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40.0, horizontal: 25),
      child: LinearPercentIndicator(
        lineHeight: 35.0,
        percent: (qNumber+1)/qLength,
        center: Text(
          (qNumber+1).toString() + "/" + qLength.toString(),
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color(0xFF222831),
        progressColor: const Color(0xFFEF7B45),
      ),
    );
  }

class Options extends StatefulWidget {
  final String option;
  final Function() updateParent;
  const Options({ Key? key, required this.option, required this.updateParent }): super(key: key);

  @override
  State<Options> createState() => _OptionsState();
}

class _OptionsState extends State<Options> {
  @override
  Widget build(BuildContext context) {
    return Padding(
    padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
    child: ElevatedButton(
      onPressed: () {
          setState((){
            questionsNumber += 1;
            widget.updateParent();
        });
      },
      child: AutoSizeText(
        widget.option,
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
}

// Padding options(String options) {
//   return Padding(
//     padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
//     child: ElevatedButton(
//       onPressed: () {
//           setState((){
//             questionsNumber += 1;
//         });
//       },
//       child: AutoSizeText(
//         options,
//         style: const TextStyle(
//           fontSize: 22, color: Color(0xFF222831),
//           fontWeight: FontWeight.bold),
//           minFontSize: 10,
//           maxLines: 3,
//           overflow: TextOverflow.visible,
//       ),
//       style: ElevatedButton.styleFrom(
//         minimumSize: const Size.fromHeight(50),
//         primary: const Color(0xFFEF7B45),
//         textStyle: const TextStyle(fontSize: 22),
//         padding: const EdgeInsets.symmetric(vertical: 14.0, horizontal: 30),
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(15),
//         ),
//       ),
//     ),
//   );
// }

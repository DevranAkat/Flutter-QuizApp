import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class QuizPage extends StatelessWidget {
  const QuizPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
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
            const Padding(
              padding:  EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
                child:  AutoSizeText(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s,',
                  style: TextStyle(fontSize: 24, color: Colors.white),
                  minFontSize: 14,
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            Options("Answer 1, Lorem Ipsum is simply dummy text of the"),
            Options("Answer 2"),
            Options("Answer 3"),
            Options("Answer 4"),
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
          fontSize: 18, color: Color(0xFF222831),
          fontWeight: FontWeight.bold),
          minFontSize: 12,
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
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

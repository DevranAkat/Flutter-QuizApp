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
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
              child: Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
                style: const TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
            Options("Answer 1"),
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
      child: Text(answer, style: const TextStyle(color: Colors.black)),
      style: ElevatedButton.styleFrom(
        minimumSize: const Size.fromHeight(50),
        primary: Colors.white,
        textStyle: const TextStyle(fontSize: 22),
        padding: const EdgeInsets.symmetric(vertical: 14.0, horizontal: 30),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    ),
  );
}

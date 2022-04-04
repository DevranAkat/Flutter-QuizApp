import 'package:flutter/material.dart';

class QuizPage extends StatelessWidget {
  const QuizPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color(0xFF222831),
          title: const Text('Quiz'),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(40),
            ),
          ),
        ),
        body: Column(
          children: [
            Card(
              child: Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0), image: DecorationImage(fit: BoxFit.contain, image: AssetImage('assets/image.png'))),
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text('Dette er spørsmålet'),
                ),
              ),
              margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
            )
          ],
        ));
  }
}
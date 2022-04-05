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
                color: Colors.transparent,
                image: DecorationImage(fit: BoxFit.fill, image: AssetImage('assets/image.png')),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            color: Colors.transparent,
            elevation: 0.0,
            margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 5.0),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 15.0),
            child: ElevatedButton(
              onPressed: () => {},
              child: const Text('Answer 1!', style: TextStyle(color: Colors.black)),
              style: ElevatedButton.styleFrom(minimumSize: const Size.fromHeight(50), primary: Colors.white, textStyle: const TextStyle(fontSize: 20), padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 50)),
            ),
          ),
        ],
      ),
    );
  }
}

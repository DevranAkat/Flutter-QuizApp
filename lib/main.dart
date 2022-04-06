import 'package:flutter/material.dart';
import 'screens/quiz_page.dart';
import 'screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFF274C71),
        primaryColor: const Color(0xFF222831),
      ),
      routes: {
        '/': (context) => const HomePage(),
        '/second': (context) => const QuizPage(),
      },
      initialRoute: '/',
    );
  }
}

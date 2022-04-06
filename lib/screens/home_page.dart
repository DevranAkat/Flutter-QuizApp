import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => const Scaffold(
        body: PlayButton(),
      );
}

class PlayButton extends StatelessWidget {
  const PlayButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () => Navigator.pushNamed(context, '/second'),
        child: const Text(
          'Play!',
          style: TextStyle(color: Color(0xFF222831), fontWeight: FontWeight.bold),
        ),
        style: ElevatedButton.styleFrom(
          primary: const Color(0xFFEF7B45),
          textStyle: const TextStyle(fontSize: 28),
          padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 70),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}

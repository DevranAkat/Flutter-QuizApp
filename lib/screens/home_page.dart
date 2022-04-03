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
          child: const Text('Play!'),
          style: ElevatedButton.styleFrom(
            primary: Colors.blue,
          ),
      ),
    );
  }
}
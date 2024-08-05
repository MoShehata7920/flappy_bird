import 'package:flame/game.dart';
import 'package:flutter/material.dart';

import 'package:flappy_bird/game/flappy_bird_game.dart';

void main() {
  final game = FlappyBirdGame();

  runApp(GameWidget(game: game));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flappy Bird',
      debugShowCheckedModeBanner: false,
      home: Scaffold(),
    );
  }
}

import 'package:flutter/material.dart';

import 'package:flappy_bird/game/flappy_bird_game.dart';
import 'package:flappy_bird/resources/assets_manager.dart';

class GameOverScreen extends StatelessWidget {
  final FlappyBirdGame game;
  static const String id = 'gameOver';

  const GameOverScreen({super.key, required this.game});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.black38,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(Assets.gameOver),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: restartTheGame,
              style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
              child: const Text(
                'Restart',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void restartTheGame() {
    game.bird.reset();
    game.overlays.remove('gameOver');
    game.resumeEngine();
  }
}

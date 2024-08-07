import 'package:flutter/material.dart';

import 'package:flappy_bird/game/flappy_bird_game.dart';
import 'package:flappy_bird/resources/assets_manager.dart';

class MainMenuScreen extends StatelessWidget {
  final FlappyBirdGame game;
  static const String id = "mainMenu";

  const MainMenuScreen({super.key, required this.game});

  @override
  Widget build(BuildContext context) {
    game.pauseEngine();

    return Scaffold(
      body: GestureDetector(
        onTap: () {
          game.overlays.remove('mainMenu');
          game.resumeEngine();
        },
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(Assets.menu),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.3,
              ),
              Image.asset(Assets.message),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              const Column(
                children: [
                  Text(
                    "Developed By",
                    style: TextStyle(color: Color(0xFFFFFF00)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Mohamed Shehata Torky",
                    style: TextStyle(
                      color: Color(0xFF00008B),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

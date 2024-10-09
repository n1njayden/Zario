import 'package:flame/game.dart';
import 'package:flutter/material.dart';

import 'overlays/game_over.dart';
import 'overlays/main_menu.dart';
import 'zario.dart';

void main() {
  runApp(
    GameWidget<Zario>.controlled(
      gameFactory: Zario.new,
      overlayBuilderMap: {
        'MainMenu': (_, game) => MainMenu(game: game),
        'GameOver': (_, game) => GameOver(game: game),
      },
      initialActiveOverlays: const ['MainMenu'],
    ),
  );
}

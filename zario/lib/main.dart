import 'package:flame/game.dart';
import 'package:flutter/material.dart';

import 'zario.dart';

void main() {
  runApp(
    const GameWidget<Zario>.controlled(
      gameFactory: Zario.new,
    ),
  );
}
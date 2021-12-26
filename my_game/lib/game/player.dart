import 'dart:math';

import 'package:flame/assets.dart';
import 'package:flame/components.dart';
import 'package:flame/sprite.dart';
import 'package:flutter/material.dart';
import 'manageGame.dart';

class Player extends SpriteAnimationComponent with HasGameRef<GameLoop> {
  String path;
  final VoidCallback onTouch;
  Player(this.path, this.onTouch);

  @override
  Future<void>? onLoad() async {
    var spriteSheet = SpriteSheet(image: await Images().load(path), srcSize: Vector2(9.0, 9.0));
    animation = spriteSheet.createAnimation(row: 0, stepTime: 0.3);
    position = gameRef.size / 2;
    width = 80;
    height =  120; //Vector2(xPosition.toDouble(),yPosition.toDouble());
    return super.onLoad();
  }

  void Jump(Vector2 delta) {
    position.add(Vector2(50,50));
  }
}
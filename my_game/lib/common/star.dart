import 'dart:math';
import 'package:flame/assets.dart';
import 'package:flame/components.dart';
import 'package:flame/sprite.dart';
import 'package:my_game/game/manageGame.dart';

class Star extends SpriteAnimationComponent with HasGameRef<GameLoop> {
  @override
  Future<void>? onLoad() async {
    var spriteSheet = SpriteSheet(image: await Images().load("stars.png"), srcSize: Vector2(9.0, 9.0));
    animation = spriteSheet.createAnimation(row: Random().nextInt(3) + 1, stepTime: 0.3);
    var size = Random().nextInt(20).toDouble() + 10;
    var x = Random().nextInt((gameRef.size.toRect().width - size).toInt()).toDouble();
    var y = Random().nextInt((gameRef.size.toRect().height - size).toInt()).toDouble();
    width = size;
    height = size;
    position = Vector2(x,y);
    anchor = Anchor.center;
    return super.onLoad();
  }
}
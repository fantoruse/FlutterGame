import 'package:flame/components.dart';
import 'package:my_game/game/manageGame.dart';

class MenuButton extends SpriteComponent with HasGameRef<GameLoop> {
  
  @override
  Future<void>? onLoad() async {
    sprite = await Sprite.load("Blue_witch/B_witch_run.png");
    anchor = Anchor.center;
    position = gameRef.size / 2;

    var originalSize = sprite?.originalSize;
    if (originalSize == null) {
      return;
    }
    var width = gameRef.size.toSize().width / 2;
    var height = originalSize.toSize().height * (width / originalSize.toSize().height);
    size = Vector2(width, height);
    return super.onLoad();
  }
}
import 'package:flame/components.dart';
import 'package:my_game/common/star.dart';
import 'package:my_game/game/manageGame.dart';

class BackGround extends Component with HasGameRef<GameLoop> {
  int nbStars;
  BackGround(this.nbStars);

  @override
  Future<void>? onLoad() {
    for (int i = 0; i < nbStars; i++) {
      add(Star());
    }
    return super.onLoad();
  }
}
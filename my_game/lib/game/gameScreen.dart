import 'package:flame/components.dart';
import 'package:flame/src/gestures/events.dart';
import 'package:my_game/common/MenuButton.dart';
import 'package:my_game/common/backGround.dart';
import 'package:my_game/game/player.dart';
import 'manageGame.dart';

class GameScreen extends Component with HasGameRef<GameLoop> {
  late Player _player;
  @override
  Future<void>? onLoad() {
    add(BackGround(50));
    _player = Player("stars.png", _onPlayerTouch);
    add(_player);
    return super.onLoad();
  }

  void _onPlayerTouch() {

  }

  void onPadUpdate(DragUpdateInfo info) {
    if (isMounted) {
      _player.Jump(info.delta.game);
    }
  }
}
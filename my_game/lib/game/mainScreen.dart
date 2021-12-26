import 'package:flame/components.dart';
import 'package:flame/input.dart';
import 'package:my_game/common/backGround.dart';
import 'package:my_game/common/MenuButton.dart';
import 'manageGame.dart';

class MainScreen extends Component with HasGameRef<GameLoop> {
  final Function _onStartClicked;

  MainScreen(this._onStartClicked);

  @override
  Future<void>? onLoad() {
    add(BackGround(40));
    add(MenuButton());
    return super.onLoad();
  }

  void onPanStart(DragStartInfo info) {
    if (isMounted) {
      _onStartClicked();
    }
  }
}
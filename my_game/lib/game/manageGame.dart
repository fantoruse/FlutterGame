import 'package:flame/game.dart';
import 'package:flame/input.dart';
import 'package:my_game/game/gameScreen.dart';
import 'package:my_game/game/mainScreen.dart';
 
class GameLoop extends FlameGame with PanDetector {
  late GameScreen _gameScreen;
  late MainScreen _mainScreen;

  GameLoop() {
    _mainScreen = MainScreen((){
      remove(_mainScreen);
      _gameScreen = GameScreen();
      add(_gameScreen);
    });
  }
  @override
  Future<void>? onLoad() {
    add(_mainScreen);
    return super.onLoad();
  }

  @override
  void onPanStart(DragStartInfo info) {
    super.onPanStart(info);
    _mainScreen.onPanStart(info);
  }

  void onPadUpdate(DragUpdateInfo info) {
    super.onPanUpdate(info);
    _gameScreen.onPadUpdate(info);
  }
}

import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:my_game/game/manageGame.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Flame.device.fullScreen();
  Flame.device.setLandscape();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key:key);

  @override 
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Witcher Attaque",
      debugShowCheckedModeBanner: false,
      home: GameWidget(game: GameLoop()),
    );
  }
}
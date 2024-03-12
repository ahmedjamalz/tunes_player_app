import 'package:flutter/material.dart';
import 'package:tunes_player_app/models/tune.dart';

class Category extends StatelessWidget {
  const Category({super.key, required this.tune});
  final Tune tune;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          tune.playSound();
        },
        child: Container(
          color: tune.color,
        ),
      ),
    );
  }
}

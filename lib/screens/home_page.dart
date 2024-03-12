import 'package:flutter/material.dart';
import 'package:tunes_player_app/components/category.dart';
import 'package:tunes_player_app/models/tune.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  final List<Tune> tunes = const [
    Tune(color: Color(0xFFEE2B3A), sound: 'note1.wav'),
    Tune(color: Color(0xFFF39330), sound: 'note2.wav'),
    Tune(color: Color(0xFFFBF35C), sound: 'note3.wav'),
    Tune(color: Color(0xFF3CC159), sound: 'note4.wav'),
    Tune(color: Color(0xFF0CA586), sound: 'note5.wav'),
    Tune(color: Color(0xFF0CA0E7), sound: 'note6.wav'),
    Tune(color: Color(0xFF9810A7), sound: 'note7.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color(0xFF243138),
          title: Text('Flutter Tune'),
        ),
        body: Column(
          children: tunes
              .map(
                (e) => Category(tune: e),
              )
              .toList(),
        ),
      ),
    );
  }
}

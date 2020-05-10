import 'package:flutter/material.dart';
import 'package:spotify_yt/home.dart';

void main() {
  runApp(SpotifyCloneApp());
}

class SpotifyCloneApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

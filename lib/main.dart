import 'package:flutter/material.dart';
import 'package:wallpaper_app/wallpapers.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Wallpaper(),
    );
  }
}

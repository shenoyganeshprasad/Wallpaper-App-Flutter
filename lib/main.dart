import 'package:flutter/material.dart';
import 'package:wallpaper_app/fullIImage.dart';
import 'package:wallpaper_app/wallpapers.dart';
import 'package:wallpaper_app/searchBar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        'FullImage': (context) => FullImage(),
        'SearchBar': (context) => SearchBarTool(),
      },
      home: Wallpaper(),

    );
  }
}

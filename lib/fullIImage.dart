import 'package:flutter/material.dart';
import 'global.dart';

class FullImage extends StatefulWidget {
  @override
  _FullImageState createState() => _FullImageState();
}

class _FullImageState extends State<FullImage> {
  PageController pageController = PageController(initialPage: Global.index);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: pageController,
        itemCount: Global.photos.length,
        itemBuilder: (context, index) {
          return Hero(
            tag: '$index',
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                      Global.photos[index].src.large2x,
                    ),
                    fit: BoxFit.cover),
              ),
            ),
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flappy_search_bar/flappy_search_bar.dart';


class Post {
  final String title;
  final String description;

  Post(this.title, this.description);
}

Future<List<Post>> search(String search) async {
  await Future.delayed(Duration(seconds: 2));
  return List.generate(search.length, (int index) {
    return Post(
      "Title : $search $index",
      "Description :$search $index",
    );
  });
}

class SearchBarTool extends StatefulWidget {
  @override
  _SearchBarToolState createState() => _SearchBarToolState();
}

class _SearchBarToolState extends State<SearchBarTool> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: SearchBar<Post>(
            onSearch: search,
            onItemFound: (Post post, int index) {
              return ListTile(
                title: Text(post.title),
                subtitle: Text(post.description),
              );
            },
            hintText: "Search for People",
            textStyle: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.indigo,
            ),
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            iconActiveColor: Colors.indigo,
          ),
        ),
      ),
    );
  }
}

import 'package:design_patterns/adapter.dart';
import 'package:flutter/material.dart';

class HomePage2 extends StatefulWidget {
  const HomePage2({super.key});

  @override
  State<HomePage2> createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {
  final PostAPI postAPI = PostAPI();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: postAPI.getPosts().length,
              itemBuilder: ((context, index) {
                final posts = postAPI.getPosts()[index];
                return ListTile(
                  title: Text(posts.title),
                  subtitle: Text(posts.bio),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}

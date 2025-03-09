import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PostCard extends StatelessWidget {
  final int postId;
  const PostCard({super.key, required this.postId});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {
          context.go('/post/$postId');
        },
        child: Container(
          padding: EdgeInsets.all(5),
          child: Column(
            children: <Widget>[
              Text("Title"),
              SizedBox(height: 10),
              Text("Description"),
            ],
          ),
        ),
      ),
    );
  }
}

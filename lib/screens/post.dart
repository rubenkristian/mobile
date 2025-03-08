import 'package:flutter/material.dart';

class PostScreen extends StatelessWidget {
  final String postId;
  const PostScreen({super.key, required this.postId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(5),
        child: ListView.builder(
          itemBuilder: (context, index) {
            return Card(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 6, horizontal: 4),

                child: Column(
                  children: <Widget>[
                    Text("Title"),
                    SizedBox(height: 10),
                    Text("Description"),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

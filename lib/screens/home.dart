import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile/components/post_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return Home();
  }
}

class Home extends State<HomeScreen> {
  Home();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home", style: TextStyle(color: Colors.white)),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              context.go('/profile');
            },
            icon: Icon(Icons.person_rounded, color: Colors.white),
          ),
        ],
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Container(
        padding: EdgeInsets.all(5),
        child: ListView.builder(
          itemCount: 100,
          itemBuilder: (context, index) {
            return PostCard(postId: index);
          },
        ),
      ),
    );
  }
}

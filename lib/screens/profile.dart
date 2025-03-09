import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:go_router/go_router.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return Profile();
  }
}

class Profile extends State<ProfileScreen> {
  Profile();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        backgroundColor: Colors.lightBlueAccent,
        foregroundColor: Colors.white,
        actions: <Widget>[
          IconButton(
            onPressed: () {
              context.go('/profile/setting');
            },
            icon: Icon(Icons.settings, color: Colors.white),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              Container(
                alignment: AlignmentDirectional.centerStart,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Material(
                      elevation: 3,
                      borderRadius: BorderRadius.circular(10),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          "https://api.algobook.info/v1/randomimage?category=people",
                          width: 90,
                          height: 120,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    Text(
                      "Kristian Ruben",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50),
              InkWell(
                onTap: () {},
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
                  child: Row(
                    children: [
                      Icon(Icons.calendar_month, size: 24),
                      SizedBox(width: 10),
                      Text("Calendar", style: TextStyle(fontSize: 20)),
                    ],
                  ),
                ),
              ),
              _divider(),
              InkWell(
                onTap: () {},
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
                  child: Row(
                    children: [
                      Icon(Icons.calendar_month, size: 24),
                      SizedBox(width: 10),
                      Text("Calendar", style: TextStyle(fontSize: 20)),
                    ],
                  ),
                ),
              ),
              _divider(),
              InkWell(
                onTap: () {},
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
                  child: Row(
                    children: [
                      Icon(Icons.calendar_month, size: 24),
                      SizedBox(width: 10),
                      Text("Calendar", style: TextStyle(fontSize: 20)),
                    ],
                  ),
                ),
              ),
              _divider(),
              InkWell(
                onTap: () {},
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
                  child: Row(
                    children: [
                      Icon(Icons.calendar_month, size: 24),
                      SizedBox(width: 10),
                      Text("Calendar", style: TextStyle(fontSize: 20)),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _divider() {
    return const Padding(
      padding: EdgeInsets.zero,
      child: Divider(color: Colors.grey),
    );
  }
}

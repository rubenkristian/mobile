import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

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

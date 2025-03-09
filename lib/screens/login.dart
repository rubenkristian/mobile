import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return Login();
  }
}

class Login extends State<LoginScreen> {
  Login();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Image.asset('assets/app/logo.png', height: 250),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  label: Text("Username/Email"),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  border: OutlineInputBorder(),
                  hintText: "Type here...",
                ),
              ),
              SizedBox(height: 20),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  label: Text("Password"),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  border: OutlineInputBorder(),
                  hintText: "Type your password",
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    context.go('/');
                  },
                  child: Text("Login"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
  }
}

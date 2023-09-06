import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pemulaflutter/MainScreen.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Column(
        children: [
          Username(),
          Password(),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return MainScreen();
                }));
              },
              child: Text('Login'))
        ],
      ),
    );
  }
}

class Username extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Username();
  }
}

class _Username extends State<Username> {
  String valueUsername = '';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: TextField(
        decoration: const InputDecoration(
          hintText: 'Write your username',
          labelText: 'Username',
        ),
        onChanged: (String value) {
          setState(() {
            valueUsername = value;
          });
        },
      ),
    );
  }
}

class Password extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Password();
  }
}

class _Password extends State<Password> {
  String valuePassword = '';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: TextField(
        decoration: const InputDecoration(
          hintText: 'Write your password',
          labelText: 'Password',
        ),
        onChanged: (String value) {
          setState(() {
            valuePassword = value;
          });
        },
      ),
    );
  }
}

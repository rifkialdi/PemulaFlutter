import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pemulaflutter/LoginScreen.dart';
import 'package:pemulaflutter/MainScreen.dart';

import 'DetailScreen.dart';

void main() {
  runApp(MyApps());
}

class MyApps extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Wisata Bandung",
      theme: ThemeData(),
      home: LoginScreen(),
    );
  }
}

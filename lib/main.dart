import 'package:flutter/material.dart';
import 'package:sprint0/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Sprint 0',
        home: Scaffold(
            appBar: AppBar(title: Text('SmartStock')), body: LoginPage()));
  }
}

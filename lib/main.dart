import 'package:flutter/material.dart';
import 'package:myhealthapp/pages/login.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pocket Doctor',
      home: LoginPage(),
    );
  }
}

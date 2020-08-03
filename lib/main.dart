import 'package:flutter/material.dart';
import 'package:myhealthapp/pages/home.dart';
import 'package:myhealthapp/pages/login.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      title: 'Pocket Doctor',
      home: HomePage(),//LoginPage(),
    );
  }
}

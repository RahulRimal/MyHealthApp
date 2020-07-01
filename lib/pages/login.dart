import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget get _space {
    return SizedBox(height: 3.0);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Image.asset('assets/images/topIcon.png',
          height: 100.0,),
          Padding(
            padding: const EdgeInsets.only(top: 150.0, left: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Login',
                  style: TextStyle(
                    fontFamily: 'RobotoSlab',
                    fontSize: 70.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                _space,
                Text(
                  'Please sign in to continue.',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontFamily: 'RobotoSlab',
                    color: Colors.black45,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

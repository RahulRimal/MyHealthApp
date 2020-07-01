import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget get _space {
    return SizedBox(height: 20.0);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Center(
                  child: Image.asset('assets/images/login.png'),
                ),
                Positioned(
                  top: 250,
                  left: 10.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Login',
                        style: TextStyle(
                          fontFamily: 'RobotoSlab',
                          fontSize: 40.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        'Please sign in to continue.',
                        style: TextStyle(
                          fontSize: 15.0,
                          fontFamily: 'RobotoSlab',
                          color: Colors.black45,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 180.0,
                  right: 0.0,
                  child: Image.asset('assets/images/topIconn.png', height: 150.0),
                ),
              ],
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 50.0),
                child: Column(
                children: <Widget>[
                  Card(
                    elevation: 10.0,
                    child: Padding(
                      padding: const EdgeInsets.only(left:15.0),
                      child: TextFormField(
                        style: TextStyle(
                          fontFamily: 'RobotoSlab'
                        ),
                        decoration: InputDecoration(
                          labelText: 'EMAIL'
                        ),
                      ),
                    ),
                  ),

                  _space,

                  Card(
                    elevation: 10.0,
                    child: Padding(
                      padding: const EdgeInsets.only(left:15.0),
                      child: TextFormField(
                        style: TextStyle(
                            fontFamily: 'RobotoSlab'
                        ),
                        decoration: InputDecoration(
                            labelText: 'PASSWORD',
                        ),
                      ),
                    ),
                  ),

                  _space,

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal :130.0),
                    child: RaisedButton(
                      color: Color(0xffa2ecbc),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
                      onPressed: (){},

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[

                          Text('LOGIN'),
                          SizedBox(width: 10.0,),
                          Icon(Icons.arrow_forward),

                        ],
                      ),
                    ),
                  ),

                ],
            ),
              ),),
          ],
        ),
      ),
    );
  }
}

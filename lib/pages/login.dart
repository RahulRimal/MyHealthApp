import 'package:flutter/material.dart';

import 'home.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  bool _isVisible = true;

  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();

  Widget get _space {
    return SizedBox(height: 20.0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 50.0),
                  child: Center(
                    child: Image.asset('assets/images/login.png'),
                  ),
                ),
                Positioned(
                  top: 297.0,
                  left: 20.0,
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
                  child:
                      Image.asset('assets/images/topIconn.png', height: 150.0),
                ),
              ],
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 50.0),
                child: Column(
                  children: <Widget>[
                    Card(
                      elevation: 10.0,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: TextFormField(
                          controller: _email,
                          style: TextStyle(fontFamily: 'RobotoSlab'),
                          decoration: InputDecoration(labelText: 'EMAIL'),
                        ),
                      ),
                    ),
                    _space,
                    Card(
                      elevation: 10.0,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: TextFormField(
                          controller: _password,
                          obscureText: _isVisible,
                          style: TextStyle(fontFamily: 'RobotoSlab'),
                          decoration: InputDecoration(
                            labelText: 'PASSWORD',
                            suffixIcon: IconButton(
                              onPressed: (){
                                setState(() {
                                  _isVisible = !_isVisible;
                                });
                              },
                              icon:_isVisible ? Icon(Icons.visibility_off): Icon(Icons.visibility),
                            ),
                          ),
                        ),
                      ),
                    ),
                    _space,
                    Padding(
                      padding: const EdgeInsets.only(left: 100.0, right: 5.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          RaisedButton(
                            color: Color(0xffa2ecbc),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50.0)),
                            onPressed: () {
                              if(_email.text == 'rahul@mail.com' && _password.text == 'abc')
                                {
                                  Navigator.push(context, MaterialPageRoute(builder: (context)
                                  {
                                    return HomePage();
                                  }));
                                }
                              else
                                print('Login Failed !!');
                            },
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    'LOGIN',
                                    style: TextStyle(fontFamily: 'RobotoSlab'),
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  Icon(
                                    Icons.arrow_forward,
                                    size: 25.0,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

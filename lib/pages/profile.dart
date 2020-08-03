import 'package:flutter/material.dart';
import 'package:myhealthapp/essentials/profile_info.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  ProfileInfo userInfo = new ProfileInfo();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(userInfo.name)),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.settings),)
        ],
      ),
    );
  }
}

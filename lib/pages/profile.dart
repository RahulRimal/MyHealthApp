import 'package:flutter/material.dart';
import 'package:myhealthapp/essentials/profile_info.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  ProfileInfo userInfo = new ProfileInfo();

  get _space {
    return SizedBox(
      height: 20.0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          "Your Inforamtion",
          style: TextStyle(fontWeight: FontWeight.bold),
        )),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.settings,
              size: 30.0,
            ),
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          _space,
          Center(
            child: CircleAvatar(
              radius: 70.0,
              child: Image.network(
                'https://cdn.pixabay.com/photo/2017/03/01/22/18/avatar-2109804_1280.png',
                scale: 10.5,
              ),
            ),
          ),
          Text(
            userInfo.firstName+ ' '+userInfo.lastName,
            style: TextStyle(fontSize: 25.0,
            fontFamily: "Roboto"),
          ),
          Text(
            userInfo.profession,
            style: TextStyle(fontSize: 20.0,
                fontFamily: "Roboto",
            color: Colors.green),
          ),
          _space,
          _space,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text(
                    userInfo.age.toString(),
                    style: TextStyle(
                      fontSize: 22.0,
                    ),
                  ),
                  Text("Age",
                    style: TextStyle(
                      fontSize: 17.0,
                    ),),
                ],
              ),
              Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text(userInfo.height.toString(),
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 22.0,
                        ),),
                      Text("ft",
                        textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.black54,
                      ),),
                    ],
                  ),

                  Text("Height",
                    style: TextStyle(
                      fontSize: 17.0,
                    ),),
                ],
              ),
              Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text(userInfo.weight.toString(),
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 22.0,
                        ),),
                      Text("Kg",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.black54,
                        ),),
                    ],
                  ),
                  Text("Weight",
                    style: TextStyle(
                      fontSize: 17.0,
                    ),),
                ],
              ),
            ],
          ),
//          Text(
//            "Sugar Level: " + userInfo.sugarLevel.toString(),
//            style: TextStyle(fontSize: 20.0),
//          ),
//          Text(
//            "Systolic Blood Pressure: " + userInfo.systolicPressure.toString(),
//            style: TextStyle(fontSize: 20.0),
//          ),
//          Text(
//            "Distolic Blood Pressure: " + userInfo.distolicPressure.toString(),
//            style: TextStyle(fontSize: 20.0),
//          ),
        ],
      ),
    );
  }
}

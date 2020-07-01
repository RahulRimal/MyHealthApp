import 'package:flutter/material.dart';
import 'package:myhealthapp/essentials/category_list.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Categories cat = new Categories();
  List<String> categories = new List<String>();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
     categories = cat.categoryList;
  }
  @override




  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xffa2ecbc),
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Positioned(
              top: 40.0,
              left: 10.0,
              child: IconButton(
                icon: Icon(Icons.arrow_back),
                iconSize: 40.0,
                onPressed: () {},
              ),
            ),
            Positioned(
              top: 40.0,
              right: 10.0,
              child: CircleAvatar(
                radius: 30.0,
                backgroundColor: Colors.blue,
              ),
            ),

            Positioned(
              top: 150.0,
              child: Text(
                'Summary',
                style: TextStyle(
                  fontFamily: 'RobotoSlab',
                  fontSize: 30.0,
                ),
              ),
            ),


            Container(
              height:70.0,
              color: Colors.blue,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                  itemBuilder: (BuildContext context, index)
              {
                return Center(child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(categories[index],
                  style: TextStyle(
                    fontFamily: 'RobotoSlab',
                    fontSize: 30.0,
                    fontWeight: FontWeight.w800,
                  ),),
                ));
              }),
            ),

            DraggableScrollableSheet(
              initialChildSize: 0.73,
                maxChildSize: 0.73,
                minChildSize: 0.5,
                builder: (context, controller) {
              return Container(
                padding: EdgeInsets.only(top: 30.0),
                width: MediaQuery.of(context).size.width,
                height: 200.0,
                decoration: BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35.0),
                    topRight: Radius.circular(35.0),
                  ),
                ),
                child: ListView.builder(
                  controller: controller,
                    itemBuilder: (BuildContext context, index) {
                  return ListTile(
                    title: Text('Item ${index + 1}'),
                  );
                }),
              );
            }),
          ],
        ),
      ),
    );
  }
}

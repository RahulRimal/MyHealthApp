import 'package:flutter/material.dart';
import 'package:myhealthapp/essentials/category_list.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedCategory = 0;
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
//        color: Color(0xffa2ecbc),
        child: Stack(
          alignment: Alignment.topCenter,
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
                backgroundColor: Color(0xffa2ecbc),
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
              margin: EdgeInsets.only(top: 250.0),
              color: Color(0xffa2ecbc),
              height: 100.0,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (BuildContext context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: GestureDetector(
                    onTap: (){
                      setState(() {
                        _selectedCategory = index;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                      CircleAvatar(
                        radius: 30.0,
                        backgroundColor: Colors.black12,
                        
                      ),
                        Text(
                          categories[index],
                          style: TextStyle(
                              fontFamily: 'RobotoSlab',
                              fontSize: 20.0,
                              fontWeight: FontWeight.w800,
                              color: index == _selectedCategory
                                  ? Colors.black
                                  : Colors.black54),
                        ),
                      ],
                    ),
                      ),
                    );
                  }),
            ),



            DraggableScrollableSheet(
//                initialChildSize: 0.73,
                initialChildSize: 0.1,
                maxChildSize: 0.73,
//                minChildSize: 0.55,
                minChildSize: 0.1,
                builder: (context, controller) {
                  return Container(
                    padding: EdgeInsets.only(top: 30.0),
                    width: MediaQuery.of(context).size.width,
                    height: 200.0,
                    decoration: BoxDecoration(
                      color: Color(0xffa2ecbc),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(35.0),
                        topRight: Radius.circular(35.0),
                      ),
                    ),
                    child: ListView.builder(
                        controller: controller,
                        itemBuilder: (BuildContext context, index) {
                          return ListTile(
                            title: GestureDetector(
                              child: Text('Item ${index + 1}'),
                            ),
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

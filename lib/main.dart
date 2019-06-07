import 'package:flutter/material.dart';
import 'package:foodcritic/foodlist.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(vsync: this, length: 3);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Container(height: 300.0),
            Container(
              height: 200.0,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/counter.jpg'),
                      fit: BoxFit.cover)),
            ),
            Positioned(
              top: 150.0,
              left: 25.0,
              child: Container(
                height: 140.0,
                width: 140.0,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 2.0),
                    borderRadius: BorderRadius.circular(70.0),
                    image: DecorationImage(
                        image: AssetImage('assets/model.jpg'),
                        fit: BoxFit.cover)),
              ),
            ),
            Positioned(
              top: 225.0,
              left: 175.0,
              child: Row(
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Elisabeth',
                        style: TextStyle(
                            fontFamily: 'Quicksand',
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '1,974 Followers',
                        style: TextStyle(
                            fontFamily: 'Quicksand',
                            fontSize: 12.0,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(width: 15.0),
                  Container(
                    height: 30.0,
                    width: 75.0,
                    decoration: BoxDecoration(
                        color: Color(0xFFEAF4EF),
                        borderRadius: BorderRadius.circular(12.0)),
                    child: Center(
                      child: Text('Follow',
                          style: TextStyle(
                              fontFamily: 'Quicksand',
                              fontSize: 11,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF5A9776))),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
        Padding(
          padding: EdgeInsets.only(top: 20.0),
          child: TabBar(controller: tabController,
          indicatorColor: Color(0xFF469469),
          labelColor: Colors.black,
          indicatorSize: TabBarIndicatorSize.label,
          unselectedLabelColor: Colors.grey.withOpacity(0.6),
          isScrollable: true,
          tabs: <Widget>[
             Tab(
                      child: Text(
                      'Recipes',
                      style: TextStyle(
                        
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    ),
                    Tab(
                    child: Text(
                      'Gallery',
                      style: TextStyle(
                        
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Story',
                      style: TextStyle(
                        
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  )
          ],
          ),
        ),
         Container(
            height: MediaQuery.of(context).size.height - 325.0,
            child: TabBarView(
              controller: tabController,
              children: <Widget>[
                new FoodList(),
                new FoodList(),
                new FoodList(),
              ],
            ),
          )
      ],
    ));
  }
}

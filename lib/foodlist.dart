import 'package:flutter/material.dart';

class FoodList extends StatefulWidget {
  @override
  _FoodListState createState() => _FoodListState();
}

class _FoodListState extends State<FoodList> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('Recommended',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontFamily: 'Quicksand',
                    fontWeight: FontWeight.bold,
                  )),
              Text('SEE ALL',
                  style: TextStyle(
                      fontSize: 12.0,
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF469469)))
            ],
          ),
        ),
        Container(
            height: 250.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                getCard('assets/food1.jpg', 'Granola with fruits'),
                getCard('assets/food2.jpg', 'Bread with avocado'),
              ],
            ))
      ],
    );
  }

  Widget getCard(String imgPath, String foodName) {
    return Padding(
      padding: EdgeInsets.only(left: 25.0, top: 25.0, bottom: 10.0),
      child: Container(
        height: 175.0,
        width: 200.0,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.0),
          boxShadow: [
            BoxShadow(
              blurRadius: 3.0,
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 3.0
            )
          ]
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: 125.0,
                  width: 200.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(12.0), topRight: Radius.circular(12.0)),
                    image: DecorationImage(
                      image: AssetImage(imgPath),
                      fit: BoxFit.cover
                    )
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      height: 40.0,
                      width: 40.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.white.withOpacity(0.5)
                      ),
                      child: Center(
                        child: Icon(Icons.favorite, color: Colors.white),
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 10.0),
            Padding(
              padding: const EdgeInsets.only(left:15.0),
              child: Text(foodName,
              style: TextStyle(
                fontFamily: 'Quicksand',
                fontWeight: FontWeight.bold,
                fontSize: 14.0
              ),
              ),
            ),
            SizedBox(height: 10.0),
            Padding(
              padding: const EdgeInsets.only(left:15.0),
              child: Row(
                children: <Widget>[
                  Text('Breakfast',
                  style: TextStyle(
                    fontFamily: 'Quicksand',
                    fontWeight: FontWeight.bold,
                    fontSize: 10.0,
                    color: Colors.grey.withOpacity(0.5)
                  ),
                  ),
                  SizedBox(width: 10.0),
                  Text('Light food',
                  style: TextStyle(
                    fontFamily: 'Quicksand',
                    fontWeight: FontWeight.bold,
                    fontSize: 10.0,
                    color: Colors.grey.withOpacity(0.5)
                  ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.0),
            Padding(
              padding: const EdgeInsets.only(left:15.0),
              child: Row(
                children: <Widget>[
                  Icon(Icons.star, color: Colors.yellow, size: 14.0),
                  Icon(Icons.star, color: Colors.yellow, size: 14.0),
                  Icon(Icons.star, color: Colors.yellow, size: 14.0),
                  Icon(Icons.star, color: Colors.yellow, size: 14.0),
                  Icon(Icons.star_border, color: Colors.grey, size: 14.0),
                  SizedBox(width: 10.0),
                  Text('4.5',
                  style: TextStyle(
                    fontFamily: 'Quicksand',
                    fontWeight: FontWeight.bold,
                    fontSize: 10.0,
                  ),
                  ),
                ],
              ),
            )
          ]
        )
      ),
    );
  }
}

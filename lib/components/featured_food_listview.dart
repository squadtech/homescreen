import 'package:flutter/material.dart';

class FeaturedFoodListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 5.0),
      height: 150.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          FeaturedFoodItem(itemColor: Colors.yellow.shade100),
          FeaturedFoodItem(itemColor: Colors.purple.shade100),
          FeaturedFoodItem(itemColor: Colors.orange.shade100),
        ],
      ),
    );
  }
}

class FeaturedFoodItem extends StatelessWidget {
  FeaturedFoodItem({this.itemColor});

  final Color itemColor;

  final _fooddCardTextStyle = TextStyle(
    fontFamily: 'Gilroy',
    color: Colors.black,
    fontWeight: FontWeight.bold,
  );

  final _raisedButtonTextStyle = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.bold,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250.0,
      margin: EdgeInsets.only(left: 10.0),
      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
      decoration: BoxDecoration(
        color: itemColor,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(

                child: Text(
                  'Chicken',
                  style: _fooddCardTextStyle,
                ),
              ),
              Expanded(
                child: Text(
                  'Salad & Spinach',
                  style: _fooddCardTextStyle,
                ),
              ),
              Expanded(
                child: SizedBox(
                  height: 1.0,
                ),
              ),
              RaisedButton(
                elevation: 0,
                color: Colors.white,
                onPressed: () {},
                child: Text(
                  'Compre agora',
                  style: _raisedButtonTextStyle,
                ),
              ),
            ],
          ),
          SizedBox(
            width: 0.0,
          ),
          Expanded(

            child: Image.asset('images/banner_dish.png')
            ,
          ),
        ],
      ),
    );
  }
}

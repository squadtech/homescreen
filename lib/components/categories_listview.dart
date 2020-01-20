import 'package:flutter/material.dart';

class CategoriesListView extends StatefulWidget {
  @override
  _CategoriesListViewState createState() => _CategoriesListViewState();
}

class _CategoriesListViewState extends State<CategoriesListView> {
  int _selectedIndex = 0;

  List<categoryItem> categoryItems = [
    categoryItem(
      image: AssetImage('images/restaurants.png'),
      title: Text('Restaurants'),
    ),
    categoryItem(
      image: AssetImage('images/supermarket.png'),
      title: Text('Supermarket'),
    ),
    categoryItem(
      image: AssetImage('images/pharmacy.png'),
      title: Text('Pharmacy'),
    ),
    categoryItem(
      image: AssetImage('images/bakery.png'),
      title: Text('Bakery'),
    ),
    categoryItem(
      image: AssetImage('images/liquor.png'),
      title: Text('Liquor'),
    ),
  ];

  Widget _buildItem(categoryItem item, bool isSelected) {
    return Column(
      children: <Widget>[
        Flexible(
          flex: 5,
          child: Container(
            width: 100.0,
            height: 100.0,
            padding: EdgeInsets.all(15.0),
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: Image(
              image: item.image,
            ),
          ),
        ),
        SizedBox(
          height: 5.0,
        ),
        isSelected
            ? Flexible(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 5.0),
            child: DefaultTextStyle.merge(
              style: TextStyle(
                  fontFamily: 'Gilroy',
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                  fontSize: 11.0),
              child: item.title,
            ),
          ),
        )
            : Flexible(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 5.0),
            child: DefaultTextStyle.merge(
                style: TextStyle(
                  fontFamily: 'Gilroy',
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                  fontSize: 11.0,
                ),
                child: item.title),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 5.0),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: categoryItems.map(
              (item) {
            var itemIndex = categoryItems.indexOf(item);
            return GestureDetector(
              onTap: () {
                setState(() {
                  _selectedIndex = itemIndex;
                });
              },
              child: _buildItem(item, _selectedIndex == itemIndex),
            );
          },
        ).toList(),
      ),
    );
  }
}

class categoryItem {
  categoryItem({
    @required this.image,
    @required this.title,
  });

  final ImageProvider image;
  final Text title;
}


import 'package:flutter/material.dart';

import '../HomeScreen.dart';

class NavigationBar extends StatefulWidget {
  NavigationBar({this.pageIndex});

  final int pageIndex;

  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  int selectedIndex;

  List<NavigationItem> items = [
    NavigationItem(
      status: 'home_',
      image: AssetImage('images/home_inactive.png'),
      title: Text('Home'),
    ),
    NavigationItem(
      status: 'order_',
      image: AssetImage('images/order_inactive.png'),
      title: Text('Orders'),
    ),
    NavigationItem(
      status: 'search_',
      image: AssetImage('images/search_inactive.png'),
      title: Text('Search'),
    ),
    NavigationItem(
      status: 'chat_',
      image: AssetImage('images/chat_inactive.png'),
      title: Text('Chat'),
    ),
    NavigationItem(
      status: 'profile_',
      image: AssetImage('images/profile_inactive.png'),
      title: Text('Profile'),
    ),
  ];

  Widget _buildItem(NavigationItem item, bool isSelected) {
    return Container(
      height: double.maxFinite,
      width: 60.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  width: 20.0,
                  height: 20.0,
                  decoration: BoxDecoration(
                    image: isSelected
                        ? DecorationImage(
                        image:
                        AssetImage('images/${item.status}active.png'))
                        : DecorationImage(
                        image: AssetImage(
                            'images/${item.status}inactive.png')),
                  ),
                ),
                isSelected
                    ? DefaultTextStyle.merge(
                    style: TextStyle(
                      color: Colors.teal.shade500,
                      fontWeight: FontWeight.w800,
                      fontSize: 10.0,
                    ),
                    child: item.title)
                    : DefaultTextStyle.merge(
                    style: TextStyle(
                        color: Colors.grey.shade600,
                        fontWeight: FontWeight.w800,
                        fontSize: 10.0),
                    child: item.title)
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _getScreen() {
    if (selectedIndex == 0) {
      Navigator.popAndPushNamed(context, HomeScreen.routeName);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.white,
            blurRadius: 4.0,
          ),
        ],
      ),
      padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 7.0),
      height: 56.0,
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: items.map((item) {
          var itemIndex = items.indexOf(item);
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = itemIndex;
                _getScreen();
              });
            },
            child: _buildItem(item, widget.pageIndex == itemIndex),
          );
        }).toList(),
      ),
    );
  }
}

class NavigationItem {
  final ImageProvider image;
  final Text title;
  final String status;

  NavigationItem({
    @required this.status,
    @required this.image,
    @required this.title,
  });
}

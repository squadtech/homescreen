import 'package:homescreen/utils/constants.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 1.0),
     // color: Colors.white,
     color:KscaffoldBackgroundColor,
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.only(right: 8.0),
        margin: EdgeInsets.symmetric(
          vertical: 5.0,
          horizontal: 15.0,
        ),
        height: 55.0,
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Colors.grey.shade100,
              width: 1.0,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(20.0),
            )),
        child: Row(
         mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
              Container(
                padding: new EdgeInsets.all(5.0),
              height: 100.0,
              width: 250.0,
                child: TextField(
                  decoration:
                  KTextFieldDecoration.copyWith(hintText: 'Search here'),

                ),

            ),
           Expanded(
              child: Icon(
                Icons.search,
                size: 20,  // Add this
                color: Colors.grey,
              ),

            ),
          
          ],
        ),
      ),
    );
  }
}

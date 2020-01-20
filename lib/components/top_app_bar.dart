
import 'package:flutter/material.dart';
import 'package:homescreen/utils/country_options.dart';

import '../settings_screen.dart';

class TopAppBar extends StatefulWidget {
  @override
  _TopAppBarState createState() => _TopAppBarState();
}

class _TopAppBarState extends State<TopAppBar> {
  String _selectedCountry = 'Brazil';

  Flexible _getCountryName() {
    List<DropdownMenuItem<String>> dropdownItems = [];
    for (int i = 0; i < countryOptions.length; i++) {
      String countryName = countryOptions[i];
      var newItem = DropdownMenuItem<String>(
        child: Text(countryName),
        value: countryName,
      );
      dropdownItems.add(newItem);
    }
    return Flexible(
      child: DropdownButton<String>(
        underline: Container(),
        value: _selectedCountry,
        isDense: true,
        style: TextStyle(
        //  color: KappBackgroundColor,
        color: Colors.green,
          fontWeight: FontWeight.bold,
          fontSize: 13.0,
        ),
          icon: Icon(                // Add this
                Icons.arrow_drop_down,  // Add this
                color: Colors.grey,   // Add this
              ),
        items: dropdownItems,
        onChanged: (value) {
          setState(() {
            _selectedCountry = value;
          });
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
      height: 80.0,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
       // color: Colors.white,
     //  color: KappBackgroundColor,
        color:Colors.white,
      ),
      child: Row(
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, SettingsScreen.routeName);
            },
            child: Container(
              width: 40.0,
              height: 40.0,
              padding: EdgeInsets.all(10.0),
              child: Image.asset('images/menu.png', width: 20.0, height: 20.0),
            ),
          ),
          Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text(
                    'Your Location',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 10.0,
                    ),
                  ),
                  Icon(Icons.pin_drop,color: Colors.grey,),
                ],
              ),
              
              _getCountryName(),
            ],
          ),
          Container(
            width: 35.0,
            height: 35.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/cart.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

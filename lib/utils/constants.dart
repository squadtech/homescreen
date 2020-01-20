import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Standard Scafold background color
const KscaffoldBackgroundColor = Color(0xffF2F5F7);

// Standard Rounded Button color
const KRoundedButtonColor = Color(0xff3BA449);

// Standard AppBar title text style
const KAppBarTextStyle = TextStyle(
  color: Colors.black54,
  fontSize: 16.0,
  fontFamily: 'Gilroy'
);

const KAppBarTitleStyle = TextStyle(
    color: Colors.black,
    fontSize: 16.0,
    fontFamily: 'Gilroy',
    fontWeight: FontWeight.w400
);

// Standard TextField Decoration
const KTextFieldDecoration = InputDecoration(
  hintStyle: TextStyle(
    color: Colors.grey,
  ),
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(10.0),
    ),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.white,
      width: 1.0,
    ),
    borderRadius: BorderRadius.all(
      Radius.circular(20.0),
    ),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.white,
      width: 1.0,
    ),
    borderRadius: BorderRadius.all(
      Radius.circular(20.0),
    ),
  ),
);

// List of standard screen orientation
const List<DeviceOrientation> KDeviceOrientations = [
  DeviceOrientation.portraitUp,
  DeviceOrientation.portraitDown,
];

/* Recommended Services Text Styles */
const TextStyle KTitleStye = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 12.0,
);

const TextStyle KStreetNameTextStyle = TextStyle(
  color: Colors.grey,
  fontSize: 10.0,
);

const TextStyle KMileTextStyle = TextStyle(
  fontSize: 12.0,
);

const TextStyle KRatingTextStyle = TextStyle(
  fontSize: 10.0,
);

const TextStyle KStoreTitleStyle = TextStyle(
  color: Colors.white,
  fontSize: 10.0,
);

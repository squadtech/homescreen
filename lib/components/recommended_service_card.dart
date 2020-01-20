import 'package:flutter/material.dart';
import 'package:homescreen/utils/constants.dart';

class RecommendedServiceBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 5.0,
        horizontal: 5.0,
      ),
      child: Container(
        padding: EdgeInsets.only(right: 5.0),
        height: 120.0,

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Flexible(
              child: Container(
                width: double.maxFinite,
                height: double.maxFinite,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  image: DecorationImage(
                    image: AssetImage('images/rmd_service.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            SizedBox(width: 10.0),
            Flexible(
              flex: 2,
              child: Container(
                padding: EdgeInsets.only(right: 10.0),
                width: double.maxFinite,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(top: 10.0),
                          child: Text(
                            'Wigman Colima',
                            style: KTitleStye,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0, top: 10.0),
                          child: Row(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(right: 5.0),
                                width: 10.0,
                                height: 10.0,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image:
                                    AssetImage('images/direction_arrow.png'),
                                  ),
                                ),
                              ),
                              Text(
                                '1 mile',
                                style: KMileTextStyle,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.location_on,
                            color: Colors.grey.shade400,
                            size: 15.0,
                          ),
                          SizedBox(width: 2.0),
                          Flexible(
                            child: Container(
                              child: Text(
                                'Blvd. Forjadores 2190 ESQ...',
                                style: KStreetNameTextStyle,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(child: SizedBox()),
                    Padding(
                      padding: EdgeInsets.only(bottom: 5.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(5.0),
                            decoration: BoxDecoration(
                              color: Color(0xffFFF3CC),
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            child: Row(
                              children: <Widget>[
                                Text(
                                  '4.7',
                                  style: KRatingTextStyle,
                                ),
                                Icon(
                                  Icons.star_border,
                                  size: 10.0,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(5.0),
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            child: Center(
                              child: Text(
                                'Open',
                                style: KStoreTitleStyle,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

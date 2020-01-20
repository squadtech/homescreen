import 'package:homescreen/utils/constants.dart';
import 'package:homescreen/utils/overscrool_behavior.dart';

import 'components/categories_listview.dart';
import 'components/featured_food_listview.dart';
import 'components/recommended_service_card.dart';
import 'components/search_bar.dart';
import 'components/top_app_bar.dart';
import 'components/navigation_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home_screen';
  static int pageIndex = 0;

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: KscaffoldBackgroundColor,
      bottomNavigationBar: NavigationBar(pageIndex: HomeScreen.pageIndex),
      
      body: SafeArea(
        child: ScrollConfiguration(
          behavior: DisableOverScrollEffect(),
          child: ListView(
            scrollDirection: Axis.vertical,
            children: <Widget>[
              TopAppBar(),
              SearchBar(),
              /* Container(
                padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                child: Text(
                  'Popular Near You',
                  style: TextStyle(
                    fontFamily: 'Gilroy',
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
              ),*/
              FeaturedFoodListView(),
              Container(
                padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
                child: Text(
                  'Categorias',
                  style: TextStyle(
                    fontFamily: 'Gilroy',
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
              ),
              CategoriesListView(),
              Container(
                padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
                child: Text(
                  'Lojas recomendadas',
                  style: TextStyle(
                    fontFamily: 'Gilroy',
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
              ),
              RecommendedServiceBox(),
              RecommendedServiceBox(),
              RecommendedServiceBox(),
              RecommendedServiceBox(),
              RecommendedServiceBox(),
              RecommendedServiceBox(),
            ],
          ),
        ),
      ),
      
    );
  }
   SliverAppBar _buildAppBar(BuildContext context) {
    return SliverAppBar(
          textTheme: TextTheme(
            title: Theme.of(context).textTheme.title.merge(TextStyle(color: Colors.black))
          ),
          iconTheme: IconThemeData(color: Colors.lightGreen),
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          expandedHeight: 130,
          floating: true,
          flexibleSpace: Container(
            height: 160,
            padding: EdgeInsets.only(left: 20.0,right: 20.0, top: 30.0),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(child: Text("Deliver to")),
                      IconButton(icon: Icon(Icons.shopping_cart), onPressed: (){},)
                    ],
                  ), 
                  SizedBox(height: 5.0,),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0)),
                      hintText: "Search for restaurant or dishes",
                      suffixIcon: Icon(Icons.search)
                    ),

                  )
                ],
              ),
            ),
          ),
        );
  }
}

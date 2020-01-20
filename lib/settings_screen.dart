
import 'utils/constants.dart';
import 'utils/overscrool_behavior.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  static const String routeName = 'settings_screen';

  @override
  SettingsScreenState createState() => SettingsScreenState();
}

class SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'My Profile',
         style: KAppBarTitleStyle,
        ),
        centerTitle: true,
     //   leading: ReturnButton(),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.only(right: 20.0),
            child: Container(
              width: 20.0,
              height: 20.0,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('images/edit.png'),
              )),
            ),
          ),
        ],
        elevation: 1.0,
      ),
   /*   bottomNavigationBar: NavigationBar(pageIndex: 0),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 5.0),
              child: ScrollConfiguration(
                behavior: DisableOverScrollEffect(),
                child: ListView(
                  children: <Widget>[
                    UserProfileBox(
                      userName: 'Rafael SM',
                    ),
                    ItemTile(
                      itemTitle: 'Menu Data',
                      leadingImage: AssetImage('images/menu_data.png'),
                      action: () {
                        Navigator.pushNamed(
                            context, UserProfileScreen.routeName);
                      },
                    ),
                    ItemTile(
                      itemTitle: 'Orders',
                      leadingImage: AssetImage('images/order_active.png'),
                      action: () {
                        Navigator.pushNamed(context, OrderScreen.routeName);
                      },
                    ),
                    ItemTile(
                      itemTitle: 'Address',
                      leadingImage: AssetImage('images/address.png'),
                      action: () {
                        Navigator.pushNamed(
                            context, DeliveryAddressScreen.routeName);
                      },
                    ),
                    ItemTile(
                      itemTitle: 'Payment Methods',
                      leadingImage: AssetImage('images/payment_method.png'),
                      action: () {
                        Navigator.pushNamed(context, PaymentScreen.routeName);
                      },
                    ),
                    ItemTile(
                      itemTitle: 'Faccioo\'s Credit',
                      leadingImage: AssetImage('images/faccioo_credit.png'),
                      action: () {
                        Navigator.pushNamed(
                            context, FacciooCreditScreen.routeName);
                      },
                    ),
                    ItemTile(
                      itemTitle: 'Idiom',
                      leadingImage: AssetImage('images/idiom.png'),
                      action: () {
                        Navigator.pushNamed(context, LanguageScreen.routeName);
                      },
                    ),
                    ItemTile(
                      itemTitle: 'Help',
                      leadingImage: AssetImage('images/help.png'),
                      action: () {
                        Navigator.pushNamed(context, HelpScreen.routeName);
                      },
                    ),
                    ItemTile(
                      itemTitle: 'Be our Partner',
                      leadingImage: AssetImage('images/partner.png'),
                      action: () {
                        Navigator.pushNamed(
                            context, PartnershipScreen.routeName);
                      },
                    ),
                    ItemTile(
                      itemTitle: 'Suggest Restaurant',
                      leadingImage: AssetImage('images/suggest_restaurant.png'),
                      action: () {
                        Navigator.pushNamed(context, ReferScreen.routeName);
                      },
                    ),
                    ItemTile(
                      itemTitle: 'Logout',
                      leadingImage: AssetImage('images/logout.png'),
                      action: () {},
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),*/
    );
  }
}

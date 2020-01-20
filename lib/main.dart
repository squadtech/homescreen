

import 'package:flutter/services.dart';

import 'HomeScreen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // Disable route transition animation for all routes
  Route _createRoute(Widget route) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => route,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return child;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
  statusBarColor: Colors.transparent,
));
SystemChrome.setEnabledSystemUIOverlays ([SystemUiOverlay.top]);
SystemChrome.setEnabledSystemUIOverlays ([SystemUiOverlay.bottom]);
   // SystemChrome.setPreferredOrientations(KDeviceOrientations);

    return MaterialApp(
      title: 'Faccioo App',
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case HomeScreen.routeName:
            return _createRoute(HomeScreen());
          
        }
      },
    );
  }
}

import 'package:flutter/material.dart';

class Routes {
  static final mainRoute = <String, WidgetBuilder>{
    routeHome: (context) => const Scaffold(
          backgroundColor: Colors.black,
        ),
    // HomeScreen
  };
}

const routeHome = '/home';

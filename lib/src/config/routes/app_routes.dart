
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_poputchik_kg/main.dart';
import 'package:project_poputchik_kg/testpage.dart';

import 'app_name_of_routes.dart';

class AppRoutes{
  static Route<dynamic> onGenarateRoutes(RouteSettings routeSettings){
    switch(routeSettings.name){
      case Routes.entry:
        return MaterialPageRoute(builder: (_)=>const MyHomePage());
      case Routes.home:
        return MaterialPageRoute(builder: (_)=>const TestPage());
      default:
        return MaterialPageRoute(builder: (_)=>const Scaffold());

    }

  }
}
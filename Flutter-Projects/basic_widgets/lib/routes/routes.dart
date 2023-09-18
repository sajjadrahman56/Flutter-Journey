import 'package:basic_widgets/routes/routes_name.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../views/home_screen.dart';
import '../views/list_view.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.home:
        return MaterialPageRoute(
            builder: (BuildContext context) => HomeScree());
      case RoutesName.list:
        return MaterialPageRoute(
            builder: (BuildContext context) => ListViewMore());
      default:
        return MaterialPageRoute(builder: (_) {
          return Scaffold(
              body: Center(
            child: Text("No route defined"),
          ));
        });
    }
  }
}

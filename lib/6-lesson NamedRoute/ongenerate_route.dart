import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tests/6-lesson%20NamedRoute/firts.dart';
import 'package:tests/6-lesson%20NamedRoute/second.dart';

class AppRoute {
  Route? ongenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => sixth_lesson_firts());
      case '/second':
        return MaterialPageRoute(builder: (_) => sixth_lesson_Second());
      default:
        null;
    }
  }
}

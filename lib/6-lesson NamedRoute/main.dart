import 'package:flutter/material.dart';
import 'package:tests/6-lesson%20NamedRoute/firts.dart';
import 'package:tests/6-lesson%20NamedRoute/ongenerate_route.dart';
import 'package:tests/6-lesson%20NamedRoute/second.dart';

class Sixth extends StatefulWidget {
  const Sixth({Key? key}) : super(key: key);

  @override
  State<Sixth> createState() => _SixthState();
}

class _SixthState extends State<Sixth> {
  final AppRoute _appRoute = AppRoute();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: _appRoute.ongenerateRoute,
    );
  }
}

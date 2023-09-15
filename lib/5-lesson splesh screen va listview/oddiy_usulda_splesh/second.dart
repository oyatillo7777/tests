import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Second_Splesh extends StatefulWidget {
  const Second_Splesh({Key? key}) : super(key: key);

  @override
  State<Second_Splesh> createState() => _Second_SpleshState();
}

class _Second_SpleshState extends State<Second_Splesh> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Second")),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tests/5-lesson%20splesh%20screen%20va%20listview/oddiy_usulda_splesh/second.dart';

class firts_splesh extends StatefulWidget {
  const firts_splesh({Key? key}) : super(key: key);

  @override
  State<firts_splesh> createState() => _firts_spleshState();
}

Future nextScreen(BuildContext context) async {
  await Future.delayed(Duration(seconds: 3));
  Navigator.pushReplacement(
      context, MaterialPageRoute(builder: (_) => Second_Splesh()));
}

class _firts_spleshState extends State<firts_splesh> {
  @override
  void initState() {
    nextScreen(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("firts")),
      body: Container(
        child: Image.asset("images/img.png"),
      ),
    );
  }
}

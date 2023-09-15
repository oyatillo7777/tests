import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class sixth_lesson_firts extends StatefulWidget {
  const sixth_lesson_firts({Key? key}) : super(key: key);

  @override
  State<sixth_lesson_firts> createState() => _sixth_lesson_firtsState();
}

class _sixth_lesson_firtsState extends State<sixth_lesson_firts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('firts')),
      body: Container(
        width: double.infinity,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MaterialButton(
                color: Colors.indigo,
                onPressed: () {
                  Navigator.of(context).pushNamed("/second");
                },
                child: Text("Second", style: TextStyle(color: Colors.white)),
              )
            ]),
      ),
    );
  }
}

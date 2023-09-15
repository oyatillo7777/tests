import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tests/3-lesson%20next%20Screen/3-lesson_second.dart';

class third_lesson extends StatefulWidget {
  const third_lesson({Key? key}) : super(key: key);

  @override
  State<third_lesson> createState() => _third_lessonState();
}

class _third_lessonState extends State<third_lesson> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("firts")),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MaterialButton(
              color: Colors.indigo,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => third_lesson_Second_Screen()));
              },
              child: Text("Next Screen",
                  style: TextStyle(color: Colors.white, fontSize: 20)),
            ),
            MaterialButton(
              color: Colors.indigo,
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (_) => third_lesson_Second_Screen()));
              },
              child: Text("Replacement",
                  style: TextStyle(color: Colors.white, fontSize: 20)),
            ),
          ],
        ),
      ),
    );
  }
}
